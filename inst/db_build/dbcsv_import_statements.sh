#!/bin/bash

# Run the file in the directory with expanded .csv
OUTPUT_FILE="build_fia_database.sql"

#cat >$OUTPUT_FILE <<EOL
#-- Database: fia_data
#-- DROP DATABASE fia_data;
#CREATE DATABASE fia_data
#  WITH OWNER = postgres
#       ENCODING = 'UTF8'
#       TABLESPACE = pg_default
#       LC_COLLATE = 'English_United States.1252'
#       LC_CTYPE = 'English_United States.1252'
#       CONNECTION LIMIT = -1;
#EOL

for file in `find . -name "*.csv"`  
do
	table_name=${file%.csv}
	echo "COPY $table_name FROM '$file.csv' DELIMITER ';' CSV HEADER" >> $OUTPUT_FILE
done