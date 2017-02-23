--- hhandler

DROP TABLE IF EXISTS rcra.hhandler; 
CREATE TABLE rcra.hhandler( 
epa_handler_id VARCHAR,
activity_location VARCHAR,
source_type VARCHAR,
handler_sequence_number BIGINT,
receive_date DATE,
current_site_name VARCHAR,
non_notifier VARCHAR,
acknowledge_flag_date DATE,
acknowledge_flag VARCHAR,
accessibility VARCHAR,
location_street_number VARCHAR,
location_street_1 VARCHAR,
location_street_2 VARCHAR,
location_city VARCHAR,
location_state VARCHAR,
location_zip_code VARCHAR,
county_code VARCHAR,
state_district VARCHAR,
land_type VARCHAR,
mailing_street_number VARCHAR,
mailing_street_1 VARCHAR,
mailing_street_2 VARCHAR,
mailing_city VARCHAR,
mailing_state VARCHAR,
mailing_zip_code VARCHAR,
mailing_country VARCHAR,
contact_first_name VARCHAR,
contact_middle_initial VARCHAR,
contact_last_name VARCHAR,
contact_street_number VARCHAR,
contact_street_1 VARCHAR,
contact_street_2 VARCHAR,
contact_city VARCHAR,
contact_state VARCHAR,
contact_zip VARCHAR,
contact_country VARCHAR,
contact_phone VARCHAR,
contact_phone_extension VARCHAR,
contact_fax VARCHAR,
contact_e_mail_address VARCHAR,
contact_title VARCHAR,
federal_waste_generator_code_owner VARCHAR,
federal_waste_generator_code VARCHAR,
state_waste_generator_code_owner VARCHAR,
state_waste_generator_code VARCHAR,
short_term_generator VARCHAR,
importer_activity VARCHAR,
mixed_waste_generator VARCHAR,
transporter_activity VARCHAR,
transfer_facility VARCHAR,
tsd_activity VARCHAR,
recycler_activity VARCHAR,
onsite_burner_exemption VARCHAR,
furnace_exemption VARCHAR,
underground_injection_activity VARCHAR,
receives_waste_from_off_site VARCHAR,
universal_waste_destination_facility VARCHAR,
used_oil_transporter VARCHAR,
used_oil_transfer_facility VARCHAR,
used_oil_processor VARCHAR,
used_oil_refiner VARCHAR,
used_oil_fuel_burner VARCHAR,
used_oil_fuel_marketer_to_burner VARCHAR,
used_oil_specification_marketer VARCHAR,
under_40_cfr_part_262_subpart_k_as_a_college_or_university VARCHAR,
under_40_cfr_part_262_subpart_k_as_a_teaching_hospital VARCHAR,
under_40_cfr_part_262_subpart_k_as_a_non_profit_research_ins VARCHAR,
withdrawal_from_40_cfr_part_262_subpart_k VARCHAR,
include_in_national_report VARCHAR,
reporting_cycle_year BIGINT,
cdx_transaction_id VARCHAR
);
