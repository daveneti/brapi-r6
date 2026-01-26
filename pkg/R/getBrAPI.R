#' Creates a BrAPIClient R6 Class object.
#'
#' @param server The BraPI server URL to be used
#' @param authentication The authentication string to be used if the server requires authentication
#' @param verbosity Set verbosity level for httr2 requests. 0 = none, 1 = basic, 2 = headers, 3 = body. Aslo controls
#'   verbosity of messages from this client. Defaults to 0.
#' @return A configured BrAPIClient R6 Class object.
#' @examples
#' getBrAPI("www.brapiserver.com")
#' @import R6
#' @import httr2
#' @importFrom glue glue
#' @export
getBrAPI <- function(server = NULL,
                     authentication = NULL,
                     verbosity = 0) {
  client <- BrAPIClient$new(server, authentication, verbosity)
}


getBrAPI <- function(server = NULL,
                     authentication = NULL,
                     verbosity = 0) {
  client <- BrAPIClient$new(server, authentication, verbosity)
}

to_list <- function(x) {
  if (!is.list(x)) {
    list(x)
  } else {
    x
  }
}

