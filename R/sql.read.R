#' Loads in a sql file
#'
#' @param path String: The path to a sql file
sql.read <- function(path=getwd()){
  sql <- readChar(path, file.info(path)$size)
  return(sql)
}
