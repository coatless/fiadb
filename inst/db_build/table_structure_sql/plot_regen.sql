-- Create the PLOT_REGEN table
create table FIA.PLOT_REGEN(
	CN varchar(34),
	PLT_CN varchar(34),
	INVYR numeric(4,0),
	STATECD	numeric(4,0),
	UNITCD numeric(2,0),
	COUNTYCD numeric(3,0),
	PLOT numeric(5,0),
	BROWSE_IMPACT numeric(1,0),
	CREATED_BY varchar(30),
	CREATED_DATE date,
	CREATED_IN_INSTANCE varchar(6),
	MODIFIED_BY varchar(30),
	MODIFIED_DATE date,
	MODIFIED_IN_INSTANCE varchar(6),
	CYCLE numeric(2,0),
	SUBCYCLE numeric(2,0),
	PRIMARY KEY (CN), 
	UNIQUE(STATECD, COUNTYCD, PLOT, INVYR),
	UNIQUE(STATECD, COUNTYCD, PLOT, CYCLE, SUBCYCLE)
);