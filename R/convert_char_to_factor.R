#' Convert all character columns in a data frame to factors
#'
#' @param df a dataframe
#' @param exclude a vector of column indices to exclude
#' @return The same dataframe with the character columns converted to factors
#' @export
convert_char_to_factor <- function(df, exclude=NULL){

  dat <- df

  # looping through each of the columns
  for(i in 1:ncol(dat)){
    if(sapply(dat, class)[i] %in% c('character') & !(i %in% exclude)){
      dat[,i] <- as.factor(dat[,i])
    }
  }

  return(dat)

}
