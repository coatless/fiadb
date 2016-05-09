-- Create the LICHEN_LAB table
create table FIA.LICHEN_LAB(
	CN varchar(34),
	PLT_CN varchar(34),
	INVYR numeric(4,0),
	STATECD	smallint,
	COUNTYCD numeric(3,0),
	PLOT numeric(5,0),
	LICH_SPPCD numeric(5,0),
	MEASYEAR numeric(4,0),
	ABUNDANCE_CLASS numeric(4,0),
	ORIGIN_FLAG numeric(1,0),
	SPP_COMMENTS varchar(2000),
	CREATED_BY varchar(30),
	CREATED_DATE date,
	CREATED_IN_INSTANCE varchar(6),
	MODIFIED_BY varchar(30),
	MODIFIED_DATE date,
	MODIFIED_IN_INSTANCE varchar(6),
	PRIMARY KEY(CN), UNIQUE(PLT_CN,LICH_SPPCD)
);