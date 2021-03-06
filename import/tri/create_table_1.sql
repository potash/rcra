CREATE SCHEMA IF NOT EXISTS tri;

DROP TABLE IF EXISTS tri.type_1;

CREATE TABLE tri.type_1 (
       "form_type" varchar, 
       "reporting_year" integer, 
       "trade_secret_indicator" varchar, 
       "sanitized_indicator" varchar, 
       "title_of_certifying_official" varchar, 
       "name_of_certifying_official" varchar, 
       "certifying_officials_signature_indicator" varchar, 
       "date_signed" date, 
       "trifid" varchar, 
       "facility_name" varchar, 
       "facility_street" varchar, 
       "facility_city" varchar, 
       "facility_county" varchar, 
       "facility_state" varchar, 
       "facility_zip_code" varchar, 
       "facility_bia_code" integer, 
       "facility_bia_name" varchar, 
       "mailing_name" varchar, 
       "mailing_street" varchar, 
       "mailing_city" varchar, 
       "mailing_state" varchar, 
       "mailing_province" varchar, 
       "mailing_zip_code" varchar, 
       "entire_facility_ind" boolean, 
       "partial_facility_ind" boolean, 
       "federal_facility_ind" boolean, 
       "goco_facility_ind" boolean, 
       "public_contact_name" varchar, 
       "public_contact_phone" varchar, 
       "primary_sic_code" varchar, 
       "sic_code_2" varchar, 
       "sic_code_3" varchar, 
       "sic_code_4" varchar, 
       "sic_code_5" varchar, 
       "sic_code_6" varchar, 
       "naics_origin" varchar, 
       "primary_naics_code" varchar, 
       "naics_code_2" varchar, 
       "naics_code_3" varchar, 
       "naics_code_4" varchar, 
       "naics_code_5" varchar, 
       "naics_code_6" varchar, 
       "latitude" float, 
       "longitude" float, 
       "db_nr_a" varchar, 
       "db_nr_b" varchar, 
       "rcra_nr_a" varchar, 
       "rcra_nr_b" varchar, 
       "npdes_nr_a" varchar, 
       "npdes_nr_b" varchar, 
       "uic_nr_a" varchar, 
       "uic_nr_b" varchar, 
       "parent_company_name" varchar, 
       "parent_company_db_nr" varchar, 
       "document_control_number" varchar, 
       "cas_number" varchar, 
       "chemical_name" varchar, 
       "classification" varchar, 
       "unit_of_measure" varchar, 
       "dioxin_distribution_1" float,
       "dioxin_distribution_2" float,
       "dioxin_distribution_3" float,
       "dioxin_distribution_4" float, 
       "dioxin_distribution_5" float,
       "dioxin_distribution_6" float, 
       "dioxin_distribution_7" float,
       "dioxin_distribution_8" float, 
       "dioxin_distribution_9" float,
       "dioxin_distribution_10" float, 
       "dioxin_distribution_11" float,
       "dioxin_distribution_12" float, 
       "dioxin_distribution_13" float, 
       "dioxin_distribution_14" float, 
       "dioxin_distribution_15" float, 
       "dioxin_distribution_16" float, 
       "dioxin_distribution_17" float, 
       "produce_the_chemical" varchar, 
       "import_the_chemical" varchar, 
       "onsite_use" varchar, 
       "sale_or_distribution" varchar, 
       "as_a_byproduct" varchar, 
       "as_a_manufactured_impurity" varchar,
       "as_a_reactant" varchar,
       "as_a_formulation_component" varchar,
       "as_an_article_component" varchar, 
       "repackaging" varchar, 
       "as_a_process_impurity" varchar,
       "as_a_chemical_processing_aid" varchar,
       "as_a_manufacturing_aid" varchar, 
       "ancillary_or_other_use" varchar,
       "maximum_amount_onsite" varchar, 
       "fugitive_air_emissions_total_release_pounds" float,
       "fugitive_air_emissions_total_release_range_code" varchar, 
       "total_fugitive_air_emissions" float,
       "fugitive_or_nonpoint_air_emissions_basis_of_estimate" varchar, 
       "stack_air_emissions_release_pounds" varchar, 
       "stack_air_emissions_release_range_code" varchar, 
       "total_stack_air_emissions" float, 
       "stack_or_point_air_emissions_basis_of_estimate" varchar, 
       "total_air_emissions" float,
       "discharges_to_stream_a_stream_name" varchar, 
       "discharges_to_stream_a_release_pounds" float,
       "discharges_to_stream_a_release_range_code" varchar, 
       "total_discharges_to_stream_a" float,
       "discharges_to_stream_a_basis_of_estimate" varchar, 
       "discharges_to_stream_a_from_stormwater" float,
       "discharges_to_stream_b_stream_name" varchar, 
       "discharges_to_stream_b_release_pounds" float,
       "discharges_to_stream_b_release_range_code" varchar, 
       "total_discharges_to_stream_b" float,
       "discharges_to_stream_b_basis_of_estimate" varchar, 
       "discharges_to_stream_b_from_stormwater" varchar, 
       "discharges_to_stream_c_stream_name" varchar, 
       "discharges_to_stream_c_release_pounds" float, 
       "discharges_to_stream_c_release_range_code" varchar, 
       "total_discharges_to_stream_c" float, 
       "discharges_to_stream_c_basis_of_estimate" varchar, 
       "discharges_to_stream_c_from_stormwater" float, 
       "discharges_to_stream_d_stream_name" varchar, 
       "discharges_to_stream_d_release_pounds" float, 
       "discharges_to_stream_d_release_range_code" varchar, 
       "total_discharges_to_stream_d" float,
       "discharges_to_stream_d_basis_of_estimate" varchar, 
       "discharges_to_stream_d_from_stormwater" float,
       "discharges_to_stream_e_stream_name" varchar, 
       "discharges_to_stream_e_release_pounds" float,
       "discharges_to_stream_e_release_range_code" varchar, 
       "total_discharges_to_stream_e" varchar, 
       "discharges_to_stream_e_basis_of_estimate" varchar, 
       "discharges_to_stream_e_from_stormwater" float,
       "discharges_to_stream_f_stream_name" varchar, 
       "discharges_to_stream_f_release_pounds" float,
       "discharges_to_stream_f_release_range_code" varchar, 
       "total_discharges_to_stream_f" float,
       "discharges_to_stream_f_basis_of_estimate" varchar, 
       "discharges_to_stream_f_from_stormwater" float, 
       "total_number_of_receiving_streams" float,
       "total_surface_water_discharge" float,
       "ugrnd_inj_onsite_to_cl_i_wells_release_pounds" float,
       "ugrnd_inj_onsite_to_cl_i_wells_release_range_code" varchar, 
       "total_ugrnd_inj_onsite_to_cl_i_wells_pounds" float,
       "ugrnd_inj_onsite_to_cl_i_wells_basis_of_estimate" varchar, 
       "ugrnd_inj_onsite_to_cl_ii_v_wells_release_pounds" varchar, 
       "ugrnd_inj_onsite_to_cl_ii_v_wells_release_range_code" varchar, 
       "total_ugrnd_inj_onsite_to_cl_ii_v_wells_pounds" float,
       "ungrnd_inj_onsite_to_cl_ii_v_wells_basis_of_estimate" varchar, 
       "total_underground_injection" float, 
       "rcra_subtitle_c_landfills_release_pounds" float, 
       "rcra_subtitle_c_landfills_release_range_code" varchar, 
       "total_rcra_subtitle_c_landfills" float, 
       "rcra_subtitle_c_landfills_basis_of_estimate" varchar, 
       "other_landfills_release_pounds" float, 
       "other_landfills_release_range_code" varchar, 
       "total_other_onsite_land_releases" float, 
       "other_landfills_basis_of_estimate" varchar, 
       "land_trtmt_appl_farming_release_pounds" float, 
       "land_trtmt_appl_farming_release_range_code" varchar, 
       "total_land_treatment" float, 
       "land_trtmt_appl_farming_basis_of_estimate" varchar, 
       "surface_impoundment_release_pounds" float, 
       "surface_impoundment_range_code" varchar, 
       "total_surface_impoundments" float, 
       "surface_impoundment_basis_of_estimate" varchar, 
       "other_disposal_release_pounds" float, 
       "other_disposal_range_code" varchar, 
       "total_other_disposal" float, 
       "other_disposal_basis_of_estimate" varchar, 
       "total_onsite_land_releases" float, 
       "potws_total_transfers_metals_only" float, 
       "potws_basis_of_estimate" varchar, 
       "storage_only" float, 
       "solidification_stabilization_metals_and_metal_compounds" float, 
       "wastewater_treatment_excluding_potws" float, 
       "transfers_to_potws_metals_and_metal_compounds" float, 
       "underground_injection" float, 
       "landfills_disposal_surface_impoundments" float, 
       "surface_impoundment" float, 
       "other_landfills" float, 
       "rcra_subtitle_c_landfilss" float,
       "land_treatment" float,
       "other_land_disposal" float, 
       "other_offsite_management" float, 
       "transfers_to_waste_broker_for_disposal" float,
       "total_pounds_unknown" float, 
       "total_transferred_offsite_to_disposal" float, 
       "transfers_to_recycling_m20_only" float, 
       "transfers_to_recycling_m24_only" float, 
       "transfers_to_recycling_m26_only" float, 
       "transfers_to_recycling_m28_only" float, 
       "transfers_to_recycling_m93_only" float, 
       "transfers_to_energy_recovery_m56_only" float, 
       "transfers_to_energy_recovery_m92_only" float, 
       "transfers_to_treatment_m40_only" float, 
       "transfers_to_treatment_m50_only" float, 
       "transfers_to_treatment_m54_only" float, 
       "transfers_to_treatment_m61_only" float, 
       "transfers_to_treatment_m69_only" float, 
       "transfers_to_treatment_m95_only" float, 
       "transfers_to_potws_non-metals" float,
       "total_transferred_offsite_for_further_waste_management" float, 
       "energy_recovery_onsite_current_year" float, 
       "quantity_recycled_onsite_current_year" float,
       "quantity_treated_onsite_current_year" float,
       "other_on-site_waste_management" float, 
       "onsite_energy_recovery_method_1" varchar, 
       "onsite_energy_recovery_method_2" varchar, 
       "onsite_energy_recovery_method_3" varchar, 
       "onsite_energy_recovery_method_4" varchar, 
       "onsite_recycling_processes_method_1" varchar, 
       "onsite_recycling_processes_method_2" varchar, 
       "onsite_recycling_processes_method_3" varchar, 
       "onsite_recycling_processes_method_4" varchar, 
       "onsite_recycling_processes_method_5" varchar, 
       "onsite_recycling_processes_method_6" varchar, 
       "onsite_recycling_processes_method_7" varchar,
       "onsite_recycling_processes_method_8" varchar,
       "onsite_recycling_processes_method_9" varchar,
       "onsite_recycling_processes_method_10" varchar,
       "rcra_c_surface_impoundment_release_pounds" float, 
       "rcra_c_surface_impoundment_range_code" varchar, 
       "total_rcra_c_surface_impoundments" float, 
       "rcra_c_surface_impoundment_basis_of_estimate" varchar, 
       "other_surface_impoundment_release_pounds" float, 
       "other_surface_impoundment_range_code" varchar, 
       "total_other_surface_impoundments" float, 
       "other_surface_impoundment_basis_of_estimate" varchar, 
       "rcra_subtitle_c_surface_impoundments_m66" float, 
       "other_surface_impoundments_m67" float, 
       "underground_injection_to_class_i_wells_m81" float, 
       "underground_injection_to_class_ii_v_wells_m82" float, 
       "assigned_fed_facility_flag" varchar, 
       "public_contact_email" varchar, 
       "revision_code_1" varchar, 
       "revision_code_2" varchar, 
       "metal_indicator" varchar
);
