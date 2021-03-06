-- Create the SOILS_SAMPLE_LOC table
create table FIA.SOILS_SAMPLE_LOC(
	CN varchar(34),
	PLT_CN varchar(34),
	INVYR numeric(4,0),
	STATECD numeric(4,0),
	COUNTYCD numeric(3,0),
	PLOT numeric(5,0),
	SMPLNNBR numeric(1,0),
	MEASYEAR numeric(4,0),
	FORFLTHK real,
	LTRLRTHK real,
	FORFLTHKN real,
	LTRLRTHKN real,
	FORFLTHKS real,
	LTRLRTHKS real,
	FORFLTHKE real,
	LTRLRTHKE real,
	FORFLTHKW real,
	LTRLRTHKW real,
	CONDID numeric(1,0),
	VSTNBR numeric(1,0),
	TXTRLYR1 real,
	TXTRLYR2 real,
	DPTHSBSL real,
	SOILS_STATCD numeric(2,0),
	CREATED_BY varchar(30),
	CREATED_DATE date,
	CREATED_IN_INSTANCE varchar(6),
	MODIFIED_BY varchar(30),
	MODIFIED_DATE date,
	MODIFIED_IN_INSTANCE varchar(6),
	PRIMARY KEY (CN),
	UNIQUE(PLT_CN, SMPLNNBR)
);