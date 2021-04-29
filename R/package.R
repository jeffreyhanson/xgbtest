#' @useDynLib xgbtest, .registration = TRUE
NULL

#' Test function
#'
#' This is a test function
#'
#' @return \code{1}.
#'
#' @export
#'
#' @examples
#' stop("deliberate error to display check log files")
test_function <- function() {
  rcpp_test_function()
}
