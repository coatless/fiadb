-- csv goes against what is in the docs!
-- Create the DWM_VISIT table
create table FIA.DWM_VISIT(
	CN varchar(34),
	PLT_CN varchar(34),
	INVYR numeric(4,0),
	STATECD	numeric(4,0),
	COUNTYCD numeric(3,0),
	PLOT numeric(5,0),
	MEASDAY numeric(2,0),
	MEASMON numeric(2,0),
	MEASYEAR numeric(4,0),
	QASTATCD numeric(1,0),
	CRWTYPCD numeric(1,0),
	SMPKNDCD numeric(2,0),
	CREATED_BY varchar(30),
	CREATED_DATE date,
	CREATED_IN_INSTANCE varchar(6),
	MODIFIED_BY varchar(30),
	MODIFIED_DATE date,
	MODIFIED_IN_INSTANCE varchar(6),
	CWD_SAMPLE_METHOD varchar(1),
	FWD_SAMPLE_METHOD varchar(1),
	MICR_SAMPLE_METHOD varchar(1),
	DLF_SAMPLE_METHOD varchar(1),
	PILE_SAMPLE_METHOD varchar(1),
	DWM_SAMPLING_STATUS_CD numeric(1,0),
	DWM_NBR_SUBP numeric(1,0),
	DWM_NBR_SUBP_TRANSECT numeric(1,0),
	DWM_SUBPLIST numeric(4,0),
	DWM_TRANSECT_LENGTH numeric(4,1),
	PRIMARY KEY(CN), UNIQUE(PLT_CN)
);