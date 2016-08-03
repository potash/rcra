CREATE SCHEMA IF NOT EXISTS nysdec_br;

DROP TABLE if EXISTS nysdec_br.gm1;
CREATE TABLE nysdec_br.gm1 (
	handler_id VARCHAR,
	hz_pg INTEGER, 
	form_code VARCHAR, 
	unit_of_measure VARCHAR, 
	wst_density DOUBLE PRECISION, 
	density_unity_of_measure VARCHAR,
        management_method VARCHAR,
        waste_min_code VARCHAR,
        source_code VARCHAR,
        gen_qty DOUBLE PRECISION,
        include_in_national_report VARCHAR,
        description VARCHAR,
        notes VARCHAR,
        on_site_management VARCHAR,
        off_site_shipment VARCHAR,
        report_year DATE
);

DROP TABLE if EXISTS nysdec_br.gm2;
CREATE TABLE nysdec_br.gm2 (
	handler_id VARCHAR, 
	hz_pg INTEGER, 
	epa_waste_code VARCHAR,
        report_year DATE
);

DROP TABLE if EXISTS nysdec_br.gm3;
CREATE TABLE nysdec_br.gm3 (
	handler_id VARCHAR, 
	hz_pg INTEGER, 
	state_waste_code VARCHAR,
        report_year DATE
);

DROP TABLE if EXISTS nysdec_br.gm4;
CREATE TABLE nysdec_br.gm4 (
	handler_id VARCHAR, 
	hz_pg INTEGER, 
	io_pg_num_seq INTEGER,
        management_method VARCHAR,
        io_tdr_id VARCHAR,
        io_tdr_qty DOUBLE PRECISION,
        report_year DATE
);

DROP TABLE if EXISTS nysdec_br.gm5;
CREATE TABLE nysdec_br.gm5 (
	handler_id VARCHAR, 
	hz_pg INTEGER, 
        sys_pg_num_seq INTEGER,
        management_method VARCHAR,
        sys_tdr_qty DOUBLE PRECISION,
        report_year DATE
);

DROP TABLE if EXISTS nysdec_br.si1;
CREATE TABLE nysdec_br.si1 (
	handler_id VARCHAR, 
	receive_date DATE,
        handler_name VARCHAR,
        location_street_no VARCHAR,
        location_street1 VARCHAR,
        location_street2 VARCHAR,
        location_city VARCHAR,
        location_state VARCHAR,
        location_zip VARCHAR,
        county_code VARCHAR,
        location_country VARCHAR,
        state_district VARCHAR,
        mail_street_no VARCHAR,
        mail_street1 VARCHAR,
        mail_street2 VARCHAR,
        mail_city VARCHAR,
        mail_state VARCHAR,
        mail_zip VARCHAR,
        mail_country VARCHAR,
        land_type VARCHAR,
        contact_first_name VARCHAR,
        contact_middle_name VARCHAR,
        contact_last_name VARCHAR,
        contact_street_no VARCHAR,
        contact_street1 VARCHAR,
        contact_street2 VARCHAR,
        contact_city VARCHAR,
        contact_state VARCHAR,
        contact_zip VARCHAR,
        contact_country VARCHAR,
        contact_phone VARCHAR,
        contact_phone_ext VARCHAR,
        contact_fax VARCHAR,
        contact_title VARCHAR,
        contact_email VARCHAR,
        fed_waste_generator VARCHAR,
        state_waste_generator VARCHAR,
        short_term_generator VARCHAR,
        importer_activity VARCHAR,
        mixed_waste_generator VARCHAR,
        transporter VARCHAR,
        transfer_facility VARCHAR,
        tsd_activity VARCHAR,
        recycler_activity VARCHAR,
        onsite_burner_exemption VARCHAR,
        furnace_exemption VARCHAR,
        underground_injection_activity VARCHAR,
        off_site_receipt VARCHAR,
        universal_waste_dest_facility VARCHAR,
        used_oil_transporter VARCHAR,
        used_oil_transfer_facility VARCHAR,
        used_oil_processor VARCHAR,
        used_oil_refiner VARCHAR,
        used_oil_burner VARCHAR,
        used_oil_market_burner VARCHAR,
        used_oil_spec_marketer VARCHAR,
        subpart_k_college VARCHAR,
        subpart_k_hospital VARCHAR,
        subpart_k_nonprofit VARCHAR,
        subpart_k_withdrawal VARCHAR,
        include_in_national_report VARCHAR,
        notes VARCHAR,
        report_year DATE
);

DROP TABLE if EXISTS nysdec_br.si2;
CREATE TABLE nysdec_br.si2 (
	handler_id VARCHAR, 
	owner_operator_seq INTEGER,
        owner_operator_indicator VARCHAR,
        owner_operator_name VARCHAR,
        date_became_current DATE,
        owner_operator_type VARCHAR,
        street_no VARCHAR,
        street1 VARCHAR,
        street2 VARCHAR,
        city VARCHAR,
        state VARCHAR,
        zip VARCHAR,
        country VARCHAR,
        phone VARCHAR,
        notes VARCHAR,
        report_year DATE
);

DROP TABLE if EXISTS nysdec_br.si3;
CREATE TABLE nysdec_br.si3 (
	handler_id VARCHAR, 
	naics_seq INTEGER,
        naics_code VARCHAR,
        report_year DATE
);

DROP TABLE if EXISTS nysdec_br.si4;
CREATE TABLE nysdec_br.si4 (
	handler_id VARCHAR, 
        epa_waste_code VARCHAR,
        report_year DATE
);

DROP TABLE if EXISTS nysdec_br.si5;
CREATE TABLE nysdec_br.si5 (
	handler_id VARCHAR, 
        state_waste_code VARCHAR,
        report_year DATE
);

DROP TABLE if EXISTS nysdec_br.si6;
CREATE TABLE nysdec_br.si6 (
	handler_id VARCHAR, 
        universal_waste_owner VARCHAR,
        universal_waste VARCHAR,
        generated VARCHAR,
        accumulated VARCHAR,
        report_year DATE
);

DROP TABLE if EXISTS nysdec_br.si7;
CREATE TABLE nysdec_br.si7 (
	handler_id VARCHAR, 
        cert_seq INTEGER,
        cert_first_name VARCHAR,
        cert_middle_initial VARCHAR,
        cert_last_name VARCHAR,
        cert_title VARCHAR,
        cert_signed_date DATE,
        report_year DATE
);

DROP TABLE if EXISTS nysdec_br.wr1;
CREATE TABLE nysdec_br.wr1 (
	handler_id VARCHAR,
        hz_pg INTEGER,
        sub_pg_num INTEGER,
        form_code VARCHAR,
        unit_of_measure VARCHAR,
        wst_density DOUBLE PRECISION,
        density_unit_of_measure VARCHAR,
        include_in_national_report VARCHAR,
        management_method VARCHAR,
        io_tdr_id VARCHAR,
        io_tdr_qty DOUBLE PRECISION,
        description VARCHAR,
        notes VARCHAR,
        report_year DATE
);

DROP TABLE if EXISTS nysdec_br.wr2;
CREATE TABLE nysdec_br.wr2 (
	handler_id VARCHAR,
        hz_pg INTEGER,
        sub_pg_num INTEGER,
        epa_waste_code VARCHAR,
        report_year DATE
);

DROP TABLE if EXISTS nysdec_br.wr3;
CREATE TABLE nysdec_br.wr3 (
	handler_id VARCHAR,
        hz_pg INTEGER,
        sub_pg_num INTEGER,
        state_waste_code VARCHAR,
        report_year DATE
);
