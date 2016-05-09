-- Create the SOILS_VISIT table
create table FIA.SOILS_VISIT(
	CN varchar(34),
	PLT_CN varchar(34),
	INVYR numeric(4,0),
	STATECD numeric(4,0),
	COUNTYCD numeric(3,0),
	PLOT numeric(5,0),
	MEASDAY numeric(2,0),
	MEASMON numeric(2,0),
	MEASYEAR numeric(4,0),
	CREATED_BY varchar(30),
	CREATED_DATE date,
	CREATED_IN_INSTANCE varchar(6),
	MODIFIED_BY varchar(30),
	MODIFIED_DATE date,
	MODIFIED_IN_INSTANCE varchar(6),
	PRIMARY KEY (CN),
	UNIQUE(PLT_CN)
);