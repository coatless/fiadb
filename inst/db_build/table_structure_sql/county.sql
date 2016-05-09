-- Create the county table
create table FIA.COUNTY(
	STATECD	numeric(4,0),
	UNITCD	numeric(2,0),
	COUNTYCD numeric(3,0),
	COUNTYNM varchar(50),
	CN varchar(34),
	CREATED_BY varchar(30),
	CREATED_DATE date,
	CREATED_IN_INSTANCE varchar(6),
	MODIFIED_BY varchar(30),
	MODIFIED_DATE date,
	MODIFIED_IN_INSTANCE varchar(6),
	UNIQUE(STATECD,UNITCD,COUNTYCD), PRIMARY KEY(CN)
	);