from drain import data, aggregate, util
from drain.data import ToHDF, FromSQL, index_as_series, Merge
from drain.step import Step
from drain.aggregation import AggregationJoin
from epa.output import aggregations, investigations

import os
from datetime import date
import logging
import pandas as pd
import numpy as np

class EpaData(Step):
    def __init__(self, month, day, year_min=2007, year_max=2016, 
            outcome_years=1, investigations_drop_lists=True, **kwargs):

        Step.__init__(self, month=month, day=day, 
                year_min=year_min, year_max=year_max, 
                outcome_years=outcome_years, 
                investigations_drop_lists=investigations_drop_lists, 
                **kwargs)

        if outcome_years != 1:
            raise NotImplementedError(
                'Currently only outcome_years=1 is implemented')

        dates = tuple(date(year, month, day) for year in range(year_min, year_max+1))
        self.aggregators = aggregations.all_dict(dates)

        sql_vars = { 'doy' : '%02d%02d' % (month, day), 
                'date_min' : date(year_min, month, day), 
                'date_max' : date(year_max, month, day) }

        facility_years = FromSQL(query="""
select * from output.facility_years{doy} 
where date between '{date_min}' and '{date_max}'""".format(**sql_vars),
                parse_dates=['date'], tables=['output.facility_years{doy}'.format(**sql_vars)], target=True)
        # store reference handlers because we need those columns
        self.handlers = FromSQL(table='output.handlers', 
                parse_dates=['receive_date'], target=True)

        X = Merge(on='rcra_id', how='left', 
                inputs=[facility_years, FromSQL(table='output.facilities', 
                        parse_dates=['min_start_date', 'max_start_date', 
                                     'min_receive_date', 'max_receive_date'], target=True)])

        X = Merge(on=['rcra_id', 'handler_id'], how='left',
                inputs = [X, self.handlers])

        br = FromSQL(table='output.br', target=True)

        self.inputs = [X, br] + self.aggregators.values()

    def run(self, X, br, *args):
        # Subset to region 2 for memory reasons
        X = X[X.region == 2]
        
        logging.info('Adding features')
        X['handler_received'] = X.handler_id.notnull()
        X['handler_age'] = (X.date - X.receive_date)/util.day

        handler_columns = self.handlers.get_result().columns
        # keep handler except a few plus a few

        # aux is facility_years join facilities plus handler_received and handler_age
        # (plus last_investigation, which is added below)
        aux_columns = X.columns.difference(['rcra_id', 'date'])\
                .difference(handler_columns)\
                .union(['naics_codes', 'receive_date'])

        # drop facility and facility_years except a few columns
        x_drop_columns = aux_columns.union(['receive_date', 'handler_id'])\
                .difference(['evaluation', 'handler_received', 'handler_age', 'br', 'region', 'state'])

        logging.info('Joining BR')
        year = X.date.dt.year
        X['br_reporting_year'] = year - 3 + (year % 2)
        data.prefix_columns(br, 'br_', ignore=['rcra_id'])
        X = X.merge(br, on=['rcra_id', 'br_reporting_year'], how='left')
        X.drop(['br_date', 'br_reporting_year'], axis=1, inplace=True)

        logging.info('Joining spatiotemporal aggregations')
        for name,aggregator in self.aggregators.iteritems():
            logging.info('Joining %s' % name)
            X = aggregator.join(X)

        logging.info('Splitting aux and X')
        X['rcra_id'] = X.rcra_id.astype(str) # use ascii for HDF index
        X.set_index(['rcra_id', 'date'], inplace=True)
        aux = X[aux_columns]

        X.drop(x_drop_columns, axis=1, inplace=True)

        # get X_COLUMNS plus all of the most recent handler minus rcra_id

        aux['last_investigation_days'] = X['investigations_facility_all_start_date_days_min']
        aux['last_investigation_date'] = (index_as_series(aux, 'date') - 
                aux.last_investigation_days*util.day)
        
        logging.info('Expanding naics codes')
        X['naics1'] = aux.naics_codes.dropna().apply(lambda n: set(i[0] for i in n) )
        X['naics2'] = aux.naics_codes.dropna().apply(lambda n: set(i[0:2] for i in n) )
        data.binarize_set(X, 'naics1')
        data.binarize_set(X, 'naics2')

        #_investigations_lists(X, drop=self.investigations_drop_lists) 
        #X = data.select_features(X, exclude=self.EXCLUDE)

        data.binarize(X, category_classes={'region', 'state'})

        X = X.astype(np.float32, copy=False)
        return {'X': X, 'aux':aux}

def _investigations_lists(df, drop):
    columns = df.columns
    list_columns = data.select_regexes(columns,
            ['investigations_.*_%s' % c for c in investigations.list_columns])
    if not drop:
        for c in list_columns:
            data.expand_counts(df, c)

        for c in df.columns.difference(columns):
            count_column = aggregate.get_spacetime_prefix(c) + 'count'
            df[c[:-5]+'prop'] = df[c] / df[count_column]
    else:
        df.drop(list_columns, axis=1, inplace=True)
