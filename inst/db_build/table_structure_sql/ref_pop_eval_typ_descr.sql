-- Create the Reference Population Evaluation Type Description table
create table FIA.REF_POP_EVAL_TYP_DESCR(
	CN varchar(34),
	LABEL_ORDER numeric(2,0),
	EVAL_TYP varchar(15),
	EVAL_TYP_LABEL varchar(15),
	CHANGE_EVAL_TYP varchar(1),
	EVAL_TYP_DESCR varchar(255),
	CREATED_BY varchar(30),
	CREATED_DATE date,
	CREATED_IN_INSTANCE varchar(6),
	MODIFIED_BY varchar(30),
	MODIFIED_DATE date,
	MODIFIED_IN_INSTANCE varchar(6),
	UNIQUE(EVAL_TYP), PRIMARY KEY(CN)
);
