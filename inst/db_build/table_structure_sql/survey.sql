-- Create the SURVEY table
create table FIA.SURVEY(
	CN varchar(34),
	INVYR numeric(4,0),
	P3_OZONE_IND varchar(1),
	STATECD numeric(4,0),
	STATEAB varchar(2),
	STATENM varchar(28),
	RSCD numeric(2,0),
	ANN_INVENTORY varchar(1),
	NOTES varchar(2000),
	CREATED_BY varchar(30),
	CREATED_DATE date,
	CREATED_IN_INSTANCE varchar(6),
	MODIFIED_BY varchar(30),
	MODIFIED_DATE date,
	MODIFIED_IN_INSTANCE varchar(6),
	CYCLE numeric(2,0),
	SUBCYCLE numeric(2,0),
	PRIMARY KEY (CN),
	UNIQUE(STATECD, INVYR, P3_OZONE_IND, CYCLE)
);