-- Create the Reference Lichen Species table
create table FIA.REF_LICHEN_SPECIES(
	LICH_SPPCD numeric(5,0),
	YEARSTART numeric(4,0),
	YEAREND numeric(4,0),
	SPP_ACRONYM varchar(6),
	GENUS varchar(40),
	SPECIES varchar(50),
	CN varchar(34),
	CREATED_BY varchar(30),
	CREATED_DATE date,
	CREATED_IN_INSTANCE varchar(6),
	MODIFIED_BY varchar(30),
	MODIFIED_DATE date,
	MODIFIED_IN_INSTANCE varchar(6),
	UNIQUE(LICH_SPPCD, SPP_ACRONYM, GENUS, SPECIES), PRIMARY KEY(CN)
);