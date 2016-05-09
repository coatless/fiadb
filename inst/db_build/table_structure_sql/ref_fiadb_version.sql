-- Create the Reference Forest Inventory and Analysis Database Version table
create table FIA.REF_FIADB_VERSION(
	VERSION varchar(50),
	INSTALL_TYPE varchar(10),
	DESCR varchar(2000),
	CREATED_BY varchar(30),
	CREATED_DATE date,
	CREATED_IN_INSTANCE varchar(6),
	MODIFIED_BY varchar(30),
	MODIFIED_DATE date,
	MODIFIED_IN_INSTANCE varchar(6),
	PRIMARY KEY(VERSION)
);