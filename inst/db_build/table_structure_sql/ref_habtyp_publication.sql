-- Create the Reference Habitat Type Publication table
create table FIA.REF_HABTYP_PUBLICATION(
	CN varchar(34),
	PUB_CD varchar(10),
	TITLE varchar(200),
	AUTHOR varchar(200),
	TYPE varchar(10),
	VALID varchar(1),
	CREATED_BY varchar(30),
	CREATED_DATE date,
	CREATED_IN_INSTANCE varchar(6),
	MODIFIED_BY varchar(30),
	MODIFIED_DATE date,
	MODIFIED_IN_INSTANCE varchar(6),
	UNIQUE(PUB_CD), PRIMARY KEY(CN)
);