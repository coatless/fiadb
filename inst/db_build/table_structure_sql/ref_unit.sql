-- Create the Reference Unit table
create table FIA.REF_UNIT(
	STATECD numeric(4,0),
	VALUE numeric(2,0),
	MEANING varchar(80),
	CREATED_BY varchar(30),
	CREATED_DATE date,
	CREATED_IN_INSTANCE varchar(6),
	MODIFIED_BY varchar(30),
	MODIFIED_DATE date,
	MODIFIED_IN_INSTANCE varchar(6),
	PRIMARY KEY(STATECD, VALUE)
);