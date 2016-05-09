-- Create the Reference Habitat Type Description table
create table FIA.REF_HABTYP_DESCRIPTION(
	CN varchar(34),
	HABTYPCD varchar(10),
	PUB_CD varchar(10),
	SCIENTIFIC_NAME varchar(115),
	COMMON_NAME varchar(255),
	VALID varchar(1),
	CREATED_BY varchar(30),
	CREATED_DATE date,
	CREATED_IN_INSTANCE varchar(6),
	MODIFIED_BY varchar(30),
	MODIFIED_DATE date,
	MODIFIED_IN_INSTANCE varchar(6),
	UNIQUE(HABTYPCD, PUB_CD), PRIMARY KEY(CN)
);