-- Create the DWM_TRANSECT_SEGMENT table
create table FIA.DWM_TRANSECT_SEGMENT(
	CN varchar(34),
	PLT_CN varchar(34),
	INVYR numeric(4,0),
	STATECD	numeric(4,0),
	COUNTYCD numeric(3,0),
	PLOT numeric(5,0),
	SUBP numeric(1,0),
	TRANSECT numeric(3,0),
	SEGMNT numeric(1,0),
	MEASYEAR numeric(4,0),
	CONDID numeric(1,0),
	SLOPE_BEGNDIST double precision,
	SLOPE_ENDDIST double precision,
	SLOPE numeric(3,0),
	HORIZ_LENGTH double precision,
	HORIZ_BEGNDIST double precision,
	HORIZ_ENDDIST double precision,
	CREATED_BY varchar(30),
	CREATED_DATE date,
	CREATED_IN_INSTANCE varchar(6),
	MODIFIED_BY varchar(30),
	MODIFIED_IN_INSTANCE varchar(6), -- reversed order
	MODIFIED_DATE date,
	SEGMNT_STATUS_CD numeric(1,0),
	SEGMNT_NONSAMPLE_REASN_CD numeric(2,0)
);