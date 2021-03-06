-- Create the DWM_DUFF_LITTER_FUEL table
create table FIA.DWM_DUFF_LITTER_FUEL(
	CN varchar(34),
	PLT_CN varchar(34),
	INVYR numeric(4,0),
	STATECD	numeric(4,0),
	COUNTYCD numeric(3,0),
	PLOT numeric(5,0),
	TRANSECT numeric(3,0),
	SUBP numeric(1,0),
	SMPLOCCD numeric(1,0),
	MEASYEAR numeric(4,0),
	CONDID numeric(1,0),
	DUFFDEP double precision,
	LITTDEP real,
	FUELDEP real,
	CREATED_BY varchar(30),
	CREATED_DATE date,
	CREATED_IN_INSTANCE varchar(6),
	MODIFIED_BY varchar(30),
	MODIFIED_DATE date,
	MODIFIED_IN_INSTANCE varchar(6),
	DLF_SAMPLE_METHOD varchar(6),
	DUFF_METHOD numeric(1,0),
	DUFF_NONSAMPLE_REASN_CD numeric(2,0),
	LITTER_METHOD numeric(1,0),
	LITTER_NONSAMPLE_REASN_CD numeric(2,0),
	FUELBED_METHOD numeric(1,0),
	FUELBED_NONSAMPLE_REASN_CD numeric(2,0),
	UNIQUE(PLT_CN,TRANSECT,SUBP,SMPLOCCD), PRIMARY KEY(CN)
);