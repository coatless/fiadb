# Start session:
library(fiadb)

# Establish connection
con = dbConnect(PostgreSQL(), user= "postgres", password="nasa", dbname="fia", host="localhost")

# Store connection in DB options
db.options("db" = con)

# Query away
state.species(6)

a = state.dbh("CA")
b = state.dbh.extended("CA")