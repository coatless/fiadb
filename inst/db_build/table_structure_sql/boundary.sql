-- Create the boundary table
create table FIA.BOUNDARY(
	CN varchar(34),
	PLT_CN varchar(34),
	INVYR numeric(4,0),
	STATECD	numeric(4,0),
	UNITCD	numeric(2,0),
	COUNTYCD numeric(3,0),
	PLOT numeric(5,0),
	SUBP numeric(3,0),
	SUBPTYP numeric(1,0),
	BNDCHG numeric(1,0),
	CONTRAST numeric(1,0),
	AZMLEFT numeric(3,0),
	AZMCORN numeric(3,0),
	DISTCORN numeric(3,0),
	AZMRIGHT numeric(3,0),
	CYCLE numeric(2,0),
	SUBCYCLE numeric(2,0),
	CREATED_BY varchar(30),
	CREATED_DATE date,
	CREATED_IN_INSTANCE varchar(6),
	MODIFIED_BY varchar(30),
	MODIFIED_DATE date,
	MODIFIED_IN_INSTANCE varchar(6),
	UNIQUE(PLT_CN,SUBP,SUBPTYP,AZMLEFT,AZMRIGHT), PRIMARY KEY(CN)
);
