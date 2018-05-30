#' Finds the indices of all character occurrences in a string. This only works with single
#' characters.
#'
#' @param string String: The character string you want to search
#' @param item String: The item you would like to find in the string
#' @return A list of all of the indices where the character can be found
find_occurrences <- function(string, item){

  # first check to see if the item is in the string at all
  if(grepl(item, string)==FALSE){
    print(paste0(item, ' is not in ', string))
    return()
  }

  # set up a list to store values
  list_iter <- 1
  storage = list()

  # loop through each of the characters in the string to check
  for(iter in 1:nchar(string)){
    # if the item is there, add to the list of indices
    if(string[iter] == item){
      storage[[list_iter]] <- string[iter]
      list_iter <- list_iter + 1
    }
  }

  return(storage)

}
