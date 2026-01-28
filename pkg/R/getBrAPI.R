#' Creates a BrAPIClient R6 Class object.
#'
#' @param server The BraPI server URL to be used
#' @param format The format of the response, either 'list', 'json', 'string' or 'raw'
#'    (default is 'list')
#' 'list' will parse the JSON response into an R list, with 3 elements: data (in tibble), pagination and status.
#' 'json' will return the JSON response as a character string.
#' 'raw' will return the raw response as a raw bytes
#' 'string' will return the response as a character string
#' @param authentication The authentication string to be used if the server requires authentication
#' @param dry_run If TRUE the client will perform a dry run and not actually perform the requests, useful for debugging
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
                     format = "list",
                     authentication = NULL,
                     dry_run = FALSE,
                     verbosity = 0) {
  client <- BrAPIClient$new(server, format, authentication, dry_run, verbosity)
}