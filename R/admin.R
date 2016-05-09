#' Creates a new postgres db account
#' 
#' Builds a new postgres account with password `nasa` by default
#' @param uname A \code{string} that indicates the username to be added. 
#' @param con   A \code{RPostgreSQL} connection. 
#' @export
add.user = function(uname, pass = "nasa", con = db.options("db")){
  
  df = dbGetQuery(con, statement = paste0(
    'CREATE USER ',uname,' WITH PASSWORD ',pass,';
    GRANT ALL PRIVILEGES ON DATABASE "fiadb" to ',uname,';
    GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA "fia" TO ',uname,';
    GRANT USAGE ON schema fia TO ',uname,';
    GRANT ALL ON schema fia TO ',uname,';'
  ))
  df
}