-- Create the Reference Forest Type table
create table FIA.REF_FOREST_TYPE(
	VALUE numeric(3,0),
	MEANING varchar(80),
	TYPGRPCD numeric(3,0),
	MANUAL_START numeric(3,1),
	MANUAL_END numeric(3,1),
	ALLOWED_IN_FIELD varchar(1),
	CREATED_BY varchar(30),
	CREATED_DATE date,
	CREATED_IN_INSTANCE varchar(6),
	MODIFIED_BY varchar(30),
	MODIFIED_DATE date,
	MODIFIED_IN_INSTANCE varchar(6),
	PRIMARY KEY(VALUE)
);
