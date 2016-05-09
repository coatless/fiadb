-- Create the POP_EVAL_GRP table
create table FIA.POP_EVAL_GRP(
	CN varchar(34),
	RSCD numeric(2,0),
	EVAL_GRP numeric(6,0),
	EVAL_GRP_DESCR varchar(255),
	STATECD	numeric(4,0),
	NOTES varchar(2000),
	CREATED_BY varchar(30),
	CREATED_DATE date,
	CREATED_IN_INSTANCE varchar(6),
	MODIFIED_BY varchar(30),
	MODIFIED_DATE date,
	MODIFIED_IN_INSTANCE varchar(6),
	PRIMARY KEY (CN),
	UNIQUE(RSCD, EVAL_GRP)
);