-- Create the SUBP_COND_CHNG_MTRX table
create table FIA.SUBP_COND_CHNG_MTRX(
	CN varchar(34),
	STATECD numeric(4,0),
	SUBP numeric(1,0),
	SUBPTYP numeric(1,0),
	PLT_CN varchar(34),
	CONDID numeric(1,0),
	PREV_PLT_CN varchar(34),
	PREVCOND numeric(1,0),
	SUBPTYP_PROP_CHNG numeric(5,4),
	CREATED_BY varchar(30),
	CREATED_DATE date,
	CREATED_IN_INSTANCE varchar(6),
	MODIFIED_BY varchar(30),
	MODIFIED_DATE date,
	MODIFIED_IN_INSTANCE varchar(6),
	PRIMARY KEY (CN),
	UNIQUE(PLT_CN, PREV_PLT_CN, SUBP, SUBPTYP, CONDID, PREVCOND)
);