-- Create the Reference Research Station table
create table FIA.REF_RESEARCH_STATION(
	STATECD numeric(4,0),
	RSCD numeric(4,0),
	RS varchar(5),
	STATE_NAME varchar(36),
	STATE_ABBR varchar(2),
	CREATED_BY varchar(30),
	CREATED_DATE date,
	CREATED_IN_INSTANCE varchar(6),
	MODIFIED_BY varchar(30),
	MODIFIED_DATE date,
	MODIFIED_IN_INSTANCE varchar(6),
	PRIMARY KEY(STATECD)
);
