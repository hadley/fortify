#' Convert any object to a data frame, suitable for visualisation.
#' 
#' @param model model, or other object
#' @param data optional original dataset
#' @param ... other arguments passed on to individual methods
#' @seealso Fortify methods: \Sexpr[results=rd]{fortify:::fortify_methods()}
#' @export
#' @S3method fortify.data.frame
#' @S3method fortify.NULL
fortify <- function(model, data, ...) UseMethod("fortify")

fortify.data.frame <- function(model, data, ...) model
fortify.NULL <- function(model, data, ...) data.frame()

methods <- function() {
  m <- methods("fortify")
  info <- attr(m, "info")
  paste("\\code\\link[", gsub("package:", "", info$from), "]", 
    "{", unclass(m), "}", collapse = ", ", sep = "")
}