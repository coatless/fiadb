#' Set or query db options
#'
#' @param ... A valid db parameter
#' @export
#' @examples 
#' \dontrun{
#' # Establish connection
#' con = dbConnect(PostgreSQL(), user= "postgres", password="nasa", dbname="fia", host="localhost")
#'
#' # Store connection in DB options
#' db.options("db" = con)
#' }
db.options = function(...) {
  lst = list(...)
  .db.opts = .db.env$.db.opts
  if (length(lst)) {
    if (is.null(names(lst)) && !is.list(lst[[1]])) {
      lst = unlist(lst)
      if (length(lst) == 1) .db.opts[[lst]] else .db.opts[lst]
    } else {
      omf = .db.opts
      if (is.list(lst[[1]]))
        lst = lst[[1]]
      if (length(lst) > 0) {
        .db.opts[names(lst)] = lst
        .db.env$.db.opts = .db.opts
      }
      invisible(omf)
    }
  } else {
    .db.opts
  }
}

## create an environment to store database options
.db.env = new.env()

## Create a list of states
ab.states = c("AL"=1,
"AK"=2,
"AZ"=4,
"AR"=5,
"CA"=6,
"CO"=8,
"CT"=9,
"DE"=10,
"FL"=12,
"GA"=13,
"HI"=15,
"ID"=16,
"IL"=17,
"IN"=18,
"IA"=19,
"KS"=20,
"KY"=21,
"LA"=22,
"ME"=23,
"MD"=24,
"MA"=25,
"MI"=26,
"MN"=27,
"MS"=28,
"MO"=29,
"MT"=30,
"NE"=31,
"NV"=32,
"NH"=33,
"NJ"=34,
"NM"=35,
"NY"=36,
"NC"=37,
"ND"=38,
"OH"=39,
"OK"=40,
"OR"=41,
"PA"=42,
"RI"=44,
"SC"=45,
"SD"=46,
"TN"=47,
"TX"=48,
"UT"=49,
"VT"=50,
"VA"=51,
"WA"=53,
"WV"=54,
"WI"=55,
"WY"=56,
"PR"=72,
"VI"=78)
