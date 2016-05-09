-- Create the POP_EVAL_ATTRIBUTE table
create table FIA.POP_EVAL_ATTRIBUTE(
	CN varchar(34),
	EVAL_CN varchar(34),
	ATTRIBUTE_NBR numeric(3,0),
	STATECD	numeric(4,0),
	CREATED_BY varchar(30),
	CREATED_DATE date,
	CREATED_IN_INSTANCE varchar(6),
	MODIFIED_BY varchar(30),
	MODIFIED_DATE date,
	MODIFIED_IN_INSTANCE varchar(6),
	UNIQUE(EVAL_CN, ATTRIBUTE_NBR)
);