-- Create the LICHEN_PLOT_SUMMARY table
create table FIA.LICHEN_PLOT_SUMMARY(
	CN varchar(34),
	PLT_CN varchar(34),
	INVYR numeric(4,0),
	STATECD	numeric(4,0),
	COUNTYCD numeric(3,0),
	PLOT numeric(5,0),
	MEASYEAR numeric(4,0),
	SUMMATION numeric(7,4),
	RICHNESS numeric(2,0),
	EVENNESS numeric(5,4),
	DIVERSITY numeric(5,4),
	CREATED_BY varchar(30),
	CREATED_DATE date,
	CREATED_IN_INSTANCE varchar(6),
	MODIFIED_BY varchar(30),
	MODIFIED_DATE date,
	MODIFIED_IN_INSTANCE varchar(6),
	PRIMARY KEY(CN), UNIQUE(PLT_CN)
);