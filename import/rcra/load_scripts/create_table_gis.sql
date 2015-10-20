--- gis

CREATE TABLE rcra.gis( 
handler_id VARCHAR,
gis_owner VARCHAR,
gis_sequence_number VARCHAR,
unit_sequence_number VARCHAR,
area_sequence_number VARCHAR,
area_acreage VARCHAR,
area_source_owner VARCHAR,
area_source_code VARCHAR,
area_source_date VARCHAR,
data_collection_date VARCHAR,
horizontal_acc_measure VARCHAR,
source_map_scale_number VARCHAR,
coordinate_data_owner VARCHAR,
coordinate_data_code VARCHAR,
geographic_reference_point_owner VARCHAR,
geographic_reference_point_code VARCHAR,
geometric_owner VARCHAR,
geometric_code VARCHAR,
horizontal_collection_owner VARCHAR,
horizontal_collection_code VARCHAR,
horizontal_reference_owner VARCHAR,
horizontal_reference_code VARCHAR,
verification_method_owner VARCHAR,
verification_method_code VARCHAR
);

--- gis_lat_long

CREATE TABLE rcra.gis_lat_long( 
handler_id VARCHAR,
gis_owner VARCHAR,
gis_sequence_number VARCHAR,
gis_latitude_longitude_sequence_number VARCHAR,
latitude_measure VARCHAR,
longitude_measure VARCHAR
);

--- lu_area_source

CREATE TABLE rcra.lu_area_source( 
owner VARCHAR,
area_source_code VARCHAR,
area_source_code_description VARCHAR,
active_status VARCHAR
);

--- lu_coordinate

CREATE TABLE rcra.lu_coordinate( 
owner VARCHAR,
coordinate_data_code VARCHAR,
coordinate_data_description VARCHAR,
active_status VARCHAR
);

--- lu_geographic_reference

CREATE TABLE rcra.lu_geographic_reference( 
owner VARCHAR,
geographic_reference_point_code VARCHAR,
geographic_reference_point_description VARCHAR,
active_status VARCHAR
);

--- lu_geometric

CREATE TABLE rcra.lu_geometric( 
owner VARCHAR,
geometric_code VARCHAR,
geometric_description VARCHAR,
active_status VARCHAR
);

--- lu_horizontal_collection

CREATE TABLE rcra.lu_horizontal_collection( 
owner VARCHAR,
horizontal_collection_code VARCHAR,
horizontal_collection_description VARCHAR,
active_status VARCHAR
);

--- lu_horizontal_reference

CREATE TABLE rcra.lu_horizontal_reference( 
owner VARCHAR,
horizontal_reference_code VARCHAR,
horizontal_reference_description VARCHAR,
active_status VARCHAR
);

--- lu_verification

CREATE TABLE rcra.lu_verification( 
owner VARCHAR,
verification_method_code VARCHAR,
verification_method_description VARCHAR,
active_status VARCHAR
);
