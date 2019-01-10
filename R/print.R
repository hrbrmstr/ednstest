#' @rdname edns_test
#' @keywords internal
#' @export
print.edns_check_output <- function(x, ...) {

  if (!interactive()) {
    browse <- FALSE
  } else {
    args <- list(...)
    if (length(args$browse) > 0) {
      browse <- as.logical(args$browse)
    } else {
      browse <- TRUE
    }
  }

  cat(
    "EDNS compliance test for [",
    crayon::cyan(sub("\\.$", "", x$data$zone[1])), "] has ",
    if (x$status == "fail")
      crayon::red(cli::symbol$cross, "FAILED")
    else
      crayon::green(cli::symbol$tick, "PASSED!"),
    "\n", crayon::white("Report URL: "),
    crayon::underline(x$report), "\n", sep=""
  )

  if (browse) utils::browseURL(x$report)

}