-- Create the POP_ESTN_UNIT table
create table FIA.POP_ESTN_UNIT(
	CN varchar(34),
	EVAL_CN varchar(34),	
	RSCD numeric(2,0),
	EVALID numeric(6,0),
	ESTN_UNIT numeric(6,0),
	ESTN_UNIT_DESCR varchar(255),
	STATECD numeric(4,0),
	AREALAND_EU numeric(12,2),
	AREATOT_EU numeric(12,2),
	AREA_USED numeric(12,2),
	AREA_SOURCE varchar(50),
	P1PNTCNT_EU numeric(12,0),
	P1SOURCE varchar(50),
	CREATED_BY varchar(30),
	CREATED_DATE date,
	CREATED_IN_INSTANCE varchar(6),
	MODIFIED_BY varchar(30),
	MODIFIED_DATE date,
	MODIFIED_IN_INSTANCE varchar(6),
	PRIMARY KEY (CN),
	UNIQUE(RSCD, EVALID, ESTN_UNIT)
);