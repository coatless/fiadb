-- Create the Reference Citation table
create table FIA.REF_CITATION(
	CITATION_NBR numeric(7,0),
	CITATION varchar(2000),
	CREATED_BY varchar(30),
	CREATED_DATE date,
	CREATED_IN_INSTANCE varchar(6),
	MODIFIED_BY varchar(30),
	MODIFIED_DATE date,
	MODIFIED_IN_INSTANCE varchar(6),
	PRIMARY KEY(CITATION_NBR)
);