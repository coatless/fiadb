-- Create the POP_EVAL_TYP table
create table FIA.POP_EVAL_TYP(
	CN varchar(34),
	EVAL_GRP_CN varchar(34),
	EVAL_CN varchar(34),
	EVAL_TYP varchar(15),
	CREATED_BY varchar(30),
	CREATED_DATE date,
	CREATED_IN_INSTANCE varchar(6),
	MODIFIED_BY varchar(30),
	MODIFIED_DATE date,
	MODIFIED_IN_INSTANCE varchar(6),
	PRIMARY KEY (CN),
	UNIQUE(EVAL_GRP_CN, EVAL_CN, EVAL_TYP)
);