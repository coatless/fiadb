-- different column definitions vs. other tables
-- Create the PLOTGEOM table
create table FIA.PLOTGEOM(
	CN varchar(34),
	STATECD	smallint,
	INVYR smallint,
	UNITCD smallint,
	COUNTYCD smallint,
	PLOT integer,
	LAT double precision,
	LON double precision,
	CONGCD smallint,
	ECOSUBCD varchar(7), -- " 232Bj"
	HUC integer,
	EMAP_HEX integer,
	FIPSCOUNTY integer,
	ROADLESSCD varchar(4), -- "1B-1"
	CREATED_BY varchar(30),
	CREATED_DATE date,
	CREATED_IN_INSTANCE varchar(6),
	MODIFIED_BY varchar(30),
	MODIFIED_DATE date,
	MODIFIED_IN_INSTANCE varchar(6),
	ADFORCD integer,
	PRIMARY KEY(CN)
);