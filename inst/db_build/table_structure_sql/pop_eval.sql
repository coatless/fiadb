-- make sure to run the clean fix sed -i "s/\x96/-/g" POP_EVAL.CSV
-- Create the POP_EVAL table
create table FIA.POP_EVAL(
	CN varchar(34),
	EVAL_GRP_CN varchar(34),
	RSCD numeric(2,0),
	EVALID numeric(6,0),
	EVAL_DESCR varchar(255),
	STATECD numeric(4,0),
	LOCATION_NM varchar(255),
	REPORT_YEAR_NM varchar(255),
	START_INVYR numeric(4,0),
	END_INVYR numeric(4,0),
	LAND_ONLY varchar(1),
	TIMBERLAND_ONLY varchar(1),
	GROWTH_ACCT varchar(1),
	ESTN_METHOD varchar(40),
	NOTES varchar(2000),
	CREATED_BY varchar(30),
	CREATED_DATE date,
	CREATED_IN_INSTANCE varchar(6),
	MODIFIED_BY varchar(30),
	MODIFIED_DATE date,
	MODIFIED_IN_INSTANCE varchar(6),
	PRIMARY KEY (CN),
	UNIQUE (RSCD, EVALID)
);