#' To remove rows of a data frame containing only 0's.
#' @param x Input data frame
#' @export

rm_0s_by_row <- function(x) {
  x_row_no_0 <- subset(x, subset = rowSums(x) > 0)
  return(x_row_no_0)
}

#' To remove columns of a data frame containing only 0's.
#' @param x Input data frame
#' @export

rm_0s_by_col <- function(x) {
  x_col_no_0 <- subset(x, select = colSums(x) > 0)
  return(x_col_no_0)
}
