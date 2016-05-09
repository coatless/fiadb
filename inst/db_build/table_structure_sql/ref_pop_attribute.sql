-- Create the Reference Population Attribute table
create table FIA.REF_POP_ATTRIBUTE(
	CN varchar(34),
	ATTRIBUTE_NBR numeric(3,0),
	ATTRIBUTE_DESCR varchar(255),
	TIMBERLAND varchar(1),
	EVAL_TYP varchar(15),
	EXPRESSION varchar(4000),
	WHERE_CLAUSE varchar(4000),
	FOOTNOTE varchar(2000),
	ATTRIBUTE_GLOSSARY varchar(4000),
	CREATED_BY varchar(30),
	CREATED_DATE date,
	CREATED_IN_INSTANCE varchar(6),
	MODIFIED_BY varchar(30),
	MODIFIED_DATE date,
	MODIFIED_IN_INSTANCE varchar(6),
	UNIQUE(ATTRIBUTE_NBR), PRIMARY KEY(CN)
);
