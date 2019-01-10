#' RFC 6891 (EDNS) Compliance Checker
#'
#' Uses [the back end of the interactive compliance checker](https://dnsflagday.net/)
#' to test DNS servers for a given domain. Printing the resultant object will show
#' the status of the input domain and auto-browse (in interactive sessions) to the
#' generated compliance report. Pass `browse = FALSE` to `print()` to suppress
#' opening the report URL.
#'
#' @md
#' @export
#' @references <https://ednscomp.isc.org/>; <https://tools.ietf.org/html/rfc6891>
#' @examples
#' edns_test("rstudio.com")
edns_test <- function(zone) {

  httr::GET(
    url = "https://ednscomp.isc.org/ednscomp",
    httr::user_agent("ednstest R package; (https://sr.ht/~hrbrmstr/ednstest)"),
    query = list(
      zone = zone,
      json = "yes"
    )
  ) -> res

  httr::stop_for_status(res)

  out <- httr::content(res, as = "text", encoding = "UTF-8")

  out <- jsonlite::fromJSON(out)

  class(out) <- c("edns_check_output", "list")

  out

}
