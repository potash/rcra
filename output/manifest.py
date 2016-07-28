import logging
from datetime import date

from drain.util import day
from drain.data import FromSQL
from drain.aggregate import Aggregate, Count, days
from drain.aggregation import SpacetimeAggregation

class ManifestAggregation(SpacetimeAggregation):
    def __init__(self, spacedeltas, dates, **kwargs):
        SpacetimeAggregation.__init__(self, spacedeltas=spacedeltas, dates=dates, 
                prefix='manifest', date_column='gen_sign_date', **kwargs)

        if not self.parallel:
            self.manifest = FromSQL(
                query="""select gen_rcra_id as rcra_id, *,
                ARRAY_REMOVE(ARRAY[waste_code_1, waste_code_2, waste_code_3,
                    waste_code_4, waste_code_5, waste_code_6], NULL) as waste_codes
                from manifest.new_york where substring(gen_rcra_id for 2) = 'NY' """, 
                tables=['manifest.new_york'], parse_dates=['gen_sign_date'], target=True)
            self.inputs = [self.manifest]

    def get_aggregates(self, date, delta):
        #booleans = [c for c in self.handlers.get_result().columns 
        #       if c not in ('rcra_id', 'receive_date', 'state', 'handler_id')]

        aggregates = [
            Count(name='manifest_line_items')#,
            #Count(booleans, prop=True),
            # Aggregate(days('gen_sign_date', date), 'max', name='gen_sign_date')

        ]

        return aggregates





















