#' Reverse any R object
#' @param x Any base R object
#' @export
reverse <- function(x) {
  flip_it_around(x)
}

flip_it_around <- function(x, ...) {
  UseMethod(generic = 'flip_it_around', object = x)
}

flip_it_around.data.frame <- function(x) {
  x[rev(colnames(x))]
}

flip_it_around.numeric <- function(x) {
  rev(x)
}

flip_it_around.character <- function(x) {
  rev(x)
}

flip_it_around.default <- function(x) {
  stop('No method for reversing object of class ', class(x), call. = FALSE)
}
