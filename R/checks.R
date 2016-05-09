#' Check if entry is a valid state
#' 
#' Searches list for acronym / state code.
#' @param state a \code{string} that is a valid two letter state code (e.g. Illinois is "IL").
#' @return returns state code: otherwise, it'll kill the process.
get.state = function(state){
  if(is.character(state)){
    if(!(state %in% names(ab.states))){
      stop("Not a valid state acronym.")
    }
    state = ab.states[state]
  }else if(is.numeric(state)){
    if(!(state %in% ab.states)){
      stop("Not a valid state code.")
    }
    
  }else{
    stop("Not a valid entry for state")
  }
  
  state
}