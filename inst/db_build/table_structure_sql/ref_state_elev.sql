-- Create the Reference State Elevation table
create table FIA.REF_STATE_ELEV(
	STATECD numeric(4,0),
	MIN_ELEV numeric(5,0),
	MAX_ELEV numeric(5,0),
	LOWEST_POINT varchar(30),
	HIGHEST_POINT varchar(30),
	CREATED_BY varchar(30),
	CREATED_DATE date,
	CREATED_IN_INSTANCE varchar(6),
	MODIFIED_BY varchar(30),
	MODIFIED_DATE date,
	MODIFIED_IN_INSTANCE varchar(6),
	PRIMARY KEY(STATECD)
);