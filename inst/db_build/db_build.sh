#!/bin/sh
##################################
# FIA DB Build Script
# Requires use of Linux or Cygwin
# OS X Users, please use homebrew 
# to obtain a true sed command
###################################
# # Before use
# chmod +x db_build.sh
# 
# # Autobuild (Uses default settings)
# ./db_build.sh --builddb
#
# # Download data only
# ./db_build.sh --getdata
#
# # Create DB Structure (Postgres) only
# ./db_build.sh --createdb
# 
# # Load data into DB
# ./db_build.sh --createdb
# 
# # Set values and build database
# ./db_build.sh --builddb --password="nasa" --user="balamut2"
##################################

# $1: url to download
function download {
    local url=$1
    echo -n "    "
    wget --progress=dot $url 2>&1 | grep --line-buffered "%" | \
        sed -u -e "s,\.,,g" | awk '{printf("\b\b\b\b%4s", $2)}'
    echo -ne "\b\b\b\b"
    echo " DONE"
}

# No parameters needed
function usage {
    echo "usage: fiadb coming soon"
}

# $1: parameter needs to be passed for command
function dbcommand {
	psql -h $DBHOST -p $PORT -d $DBNAME -U $USERNAME -w -E -q -c "$1"
}

# Parameters are set using export
function dbcreate {
	# part of psql
	createdb -h $DBHOST -p $PORT -U $USERNAME -E UTF8 -w $DBNAME
	echo "[SQL] Creating table Schema"
	dbcommand "CREATE SCHEMA $DBSCHEMA;"
}

# $1: parameter needs to be passed in containing the file name
function dbfile {
	FILE=$1
	psql -h $DBHOST -p $PORT -d $DBNAME -U $USERNAME -E -q -w -f $FILE
}

# Export statements
export DBHOST="localhost"
export DBNAME="fiadb"
export DBSCHEMA="FIA"
export USERNAME="postgres"
export PORT=5432
export PGPASSWORD="nasa"

# features
CREATE_DB=false
DOWNLOAD_DATA=false
COPY_DATA=false
TIDY=false

# Run the file in the directory with expanded .csv
TABLE_STRUCTURE_FILE="create_fia_tables.sql"
COPY_STATEMENTS_FILE="copy_to_fia_db.sql"

TEMP_DATA_DIR="fia2"

# Creation Variables	
while [ "$1" != "" ]; do
    case $1 in
	    -c | --createdb )
			CREATE_DB=true
			;;
	    -g | --getdata )
			DOWNLOAD_DATA=true
			;;
	    -i | --copydata )
			COPY_DATA=true
			;;
		-t | --tidy)
			TIDY=true
			;;
        -b | --builddb )
			CREATE_DB=true
			DOWNLOAD_DATA=true
			COPY_DATA=true
			;;
		-d | --dbname ) 
			shift
            export DBNAME=$1
            ;;
		-s | --dbschema)
			shift
            export DBSCHEMA=$1
            ;;
		-u | --user ) 
			shift
            export USERNAME=$1
            ;;
		-R | --host)
			shift
            export HOST=$1
            ;;
		-p | --port ) 
			shift
            export PORT=$1
            ;;
		-W | --password)
			shift
            export PGPASSWORD=$1
            ;;
        -h | --help )
			usage
            exit
            ;;
        * )
		usage
        exit 1
		;;
    esac
    shift
done

# Build the database and data schema
if [ "$CREATE_DB" == true ]; then

	echo "[SQL] Creating the DB .... "
	# Call create db function
	dbcreate
	
	#echo "[OPS] Downloading the table structure..."
	#download https://github.com/coatless/nasacms/blob/master/db_build/table_structure_sql.zip
	
	echo "[OPS] Extracting the table structure..."
	# Extract the fia table structure sql files (-j removes folder structure)
	unzip -j -q table_structure_sql.zip -d fia_sql
	
	echo "[OPS] Merging the table structure..."

	# Merge files together
	cat fia_sql/*.sql > $TABLE_STRUCTURE_FILE

	echo "[SQL] Creating the table structure..."
	dbfile $TABLE_STRUCTURE_FILE
fi

# Download and save data to current directory
if [ "$DOWNLOAD_DATA" == true ]; then
	echo "[OPS] Downloading All FIA Data..."
	download http://apps.fs.fed.us/fiadb-downloads/ENTIRE.zip
	
	echo "[OPS] Extracting data..."
	unzip -q ENTIRE.zip -d $TEMP_DATA_DIR
	
	echo "[DATA] Fixing Encoding Issue with POP_EVAL..."
	# Fix the file encoding issue with POP_EVAL
	sed -i "s/\x96/-/g" $TEMP_DATA_DIR/POP_EVAL.CSV
	
	echo "[OPS] Downloading FIA REF Data..."
	download http://apps.fs.fed.us/fiadb-downloads/FIADB_REFERENCE.ZIP
	
	echo "[OPS] Extracting FIA REF data..."
	unzip -q FIADB_REFERENCE.zip -d $TEMP_DATA_DIR
fi

# Import data into postgres
if [ "$COPY_DATA" == true ]; then
	
	echo "[SQL] Creating copy sql..."
	
	echo "[SQL] Beginning copy process of CSVs into PostgresSQL DB... This may take a while..."

	# Obtain each .csv extracted and build a copy statement.
	for file in `find $TEMP_DATA_DIR -type f -iname "*.csv" -printf "%f\n"` 
	do
		filename = ${file^^}
		table_name=${filename%.CSV}
		echo "[SQL] Copying $table_name into postgres..."
		# The \ is to avoid permission issues. 
		dbcommand "\COPY $DBSCHEMA.$table_name FROM '$TEMP_DATA_DIR/$file' DELIMITER ',' CSV HEADER;" 
	done
	
fi

if [ "$TIDY" == true ]; then
	echo "Cleaning up... Removing master sql query..."
	rm -rf $TABLE_STRUCTURE_FILE
fi

exit 0
