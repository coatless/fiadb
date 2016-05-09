-- Create the Reference Plant Dictionary table
create table FIA.REF_PLANT_DICTIONARY(
	CN varchar(34),
	SYMBOL_TYPE varchar(20),
	SYMBOL varchar(16),
	SCIENTIFIC_NAME varchar(100),
	NEW_SYMBOL varchar(16),
	NEW_SCIENTIFIC_NAME varchar(100),
	COMMON_NAME varchar(100),
	CATEGORY varchar(15),
	FAMILY varchar(25),
	GROWTH_HABIT varchar(50),
	DURATION varchar(50),
	US_NATIVITY varchar(100), 
	STATE_DISTRIBUTION varchar(300),
	STATE_AND_PROVINCE varchar(500),
	SCIENTIFIC_NAME_W_AUTHOR varchar(500),
	GENERA_BINOMIAL_AUTHOR varchar(100),
	TRINOMIAL_AUTHOR varchar(100),
	QUADRINOMIAL_AUTHOR varchar(100),
	XGENUS varchar(1),
	GENUS varchar(40),
	XSPECIES varchar(1),
	SPECIES varchar(50),
	SSP varchar(4),
	XSUBSPECIES varchar(1), 
	SUBSPECIES varchar(30),
	VAR varchar(4),
	XVARIETY varchar(1),
	VARIETY varchar(30),
	SUBVAR varchar(7),
	SUBVARIETY varchar(30),
	F varchar(2),
	FORMA varchar(30),
	NOTES varchar(2000),
	CREATED_BY varchar(30),
	CREATED_DATE date,
	CREATED_IN_INSTANCE varchar(6),
	MODIFIED_BY varchar(30),
	MODIFIED_DATE date,
	MODIFIED_IN_INSTANCE varchar(6),
	UNIQUE(SYMBOL_TYPE,SYMBOL,NEW_SYMBOL), PRIMARY KEY(CN)
);
