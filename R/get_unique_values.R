#' Get's all unique values of a data frame column and stores them
#' in a new data frame.
#'
#' @param information DataFrame$Column: The data frame and column name in the following notation: dataframe$column
get_unique_values <- function(information){

  # extract the uniques
  uniques <- unique(information)

  # save that information as a data frame
  res <- data.frame('unique_values'=uniques)
  return(res)

}
