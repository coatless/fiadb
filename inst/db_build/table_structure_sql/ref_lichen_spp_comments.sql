-- Create the Reference Lichen SPP Comments table
create table FIA.REF_LICHEN_SPP_COMMENTS(
	LICH_SPPCD numeric(5,0),
	SPP_NAME varchar(80),
	YEARSTART numeric(4,0),
	YEAREND numeric(4,0),
	SPP_COMMENTS varchar(2000),
	CN varchar(34),
	CREATED_BY varchar(30),
	CREATED_DATE date,
	CREATED_IN_INSTANCE varchar(6),
	MODIFIED_BY varchar(30),
	MODIFIED_DATE date,
	MODIFIED_IN_INSTANCE varchar(6),
	UNIQUE(LICH_SPPCD, SPP_NAME, YEARSTART), PRIMARY KEY(CN)
);