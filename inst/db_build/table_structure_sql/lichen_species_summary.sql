-- Create the LICHEN_SPECIES_SUMMARY table
create table FIA.LICHEN_SPECIES_SUMMARY(
	CN varchar(34),
	INVYR numeric(4,0),
	LICHEN_REGION numeric(4,0),
	LICH_SPPCD numeric(5,0),
	MEASYEAR numeric(4,0),
	LICHEN_REGION_DESC varchar(80),
	SPP_ACRONYM varchar(6),
	GENUS varchar(40),
	SUM_ABUNDANCE numeric(7,4),
	FREQUENCY_PCT numeric(3,0),
	SPECIES varchar(50),
	PLOTS_IN_REGION numeric(4,0),
	CREATED_BY varchar(30),
	CREATED_DATE date,
	CREATED_IN_INSTANCE varchar(6),
	MODIFIED_BY varchar(30),
	MODIFIED_DATE date,
	MODIFIED_IN_INSTANCE varchar(6),
	PRIMARY KEY(CN), UNIQUE(INVYR, LICHEN_REGION, LICH_SPPCD)
);