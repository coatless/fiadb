-- Create the POP_PLOT_STRATUM_ASSGN table
create table FIA.POP_PLOT_STRATUM_ASSGN(
	CN varchar(34),
	STRATUM_CN varchar(34),
	PLT_CN varchar(34),
	STATECD numeric(4,0),
	INVYR numeric(4,0),
	UNITCD numeric(2,0),
	COUNTYCD numeric(3,0),
	PLOT numeric(5,0),
	RSCD  numeric(2,0),
	EVALID  numeric(6,0),
	ESTN_UNIT  numeric(6,0),
	STRATUMCD  numeric(6,0),
	CREATED_BY varchar(30),
	CREATED_DATE date,
	CREATED_IN_INSTANCE varchar(6),
	MODIFIED_BY varchar(30),
	MODIFIED_DATE date,
	MODIFIED_IN_INSTANCE varchar(6),
	PRIMARY KEY (CN),
	UNIQUE(RSCD, EVALID, STATECD, COUNTYCD, PLOT)
);