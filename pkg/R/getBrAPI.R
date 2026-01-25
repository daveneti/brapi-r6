#' Creates a BrAPIClient R6 Class object.
#'
#' @param server The BraPI server URL to be used
#' @param authentication The authentication string to be used if the server requires authentication
#' @param verbose Set to TRUE to provide more verbose information what is happening
#' @return A configured BrAPIClient R6 Class object.
#' @examples
#' getBrAPI("www.brapiserver.com")
#' @import R6usethis::use_test("name")
#' @import httr2
#' @importFrom glue glue
#' @export
getBrAPI <- function(server = NULL,
                     authentication = NULL,
                     verbose = FALSE) {
  client <- BrAPIClient$new(server, authentication, verbose)
}

create_request <- function(client, endpoint = NULL, method = NULL) {
  create_request(client, endpoint) %>%
    httr2::req_verbose() %>%
    httr2::req_perform() %>%
    httr2::resp_body_json(simplifyVector = TRUE)
}

create_request <- function(client, endpoint = NULL, method = NULL) {
  req <- httr2::request(client$server)

  if (!is.null(endpoint)) {
    req |> httr2::req_url_path(path = endpoint)
  }

  if (!is.null(method)) {
    req |> httr2::req_method(method)
  }
  
  if (client$max_tries > 1) {
    req |> httr2::req_retry(max_tries = 5)
  }
  
  if (client$dry_run > 1) {
    req |> httr2::req_dry_run(client$dry_run)
  }
}
