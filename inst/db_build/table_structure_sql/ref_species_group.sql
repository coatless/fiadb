-- Create the Reference Species Group table
create table FIA.REF_SPECIES_GROUP(
	SPGRPCD numeric(2,0),
	NAME varchar(40),
	REGION varchar(8),
	CLASS varchar(8),
	CREATED_BY varchar(30),
	CREATED_DATE date,
	CREATED_IN_INSTANCE varchar(6),
	MODIFIED_BY varchar(30),
	MODIFIED_DATE date,
	MODIFIED_IN_INSTANCE varchar(6),
	PRIMARY KEY(SPGRPCD)
);



