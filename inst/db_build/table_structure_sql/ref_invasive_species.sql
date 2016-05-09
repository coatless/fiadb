-- Create the Reference Invasive Species table
create table FIA.REF_INVASIVE_SPECIES(
	CN varchar(34),
	STATECD numeric(4,0),
	SYMBOL varchar(16), 
	INV_GROUP_CD integer,
	UNITCD_LIST varchar(20),
	START_DATE date,
	END_DATE date,
	MANUAL_START numeric(3,1),
	MANUAL_END numeric(3,1),
	NOTES varchar(2000),
	CREATED_BY varchar(30),
	CREATED_DATE date,
	CREATED_IN_INSTANCE varchar(6),
	MODIFIED_BY varchar(30),
	MODIFIED_DATE date,
	MODIFIED_IN_INSTANCE varchar(6),
	UNIQUE(STATECD, SYMBOL), PRIMARY KEY(CN)
);
