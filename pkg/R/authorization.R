#' Creates a authorization header
#'
#' @param authorizationProvider A function that provides the authorization string to be used if the server requires authentication
#' @return A configured Databricks R6 Class object.
#' @examples
#' getBrAPI("www.brapiserver.com")
#' @import R6
#' @importFrom glue glue
#' @export
authorization <- function(authorizationProvider = noAuthorization()) {
    if (is.function(authorizationProvider)) {
      return (authentication())
    } else if (is.character(authorizationProvider)) {
        return (authorizationProvider)
    } else {
        stop("Invalid authorization provider, must be a function or a string")
    }
}

noAuthorization <- function() {
  return (NULL) ;
}

bearerAuthorization <- function(token) {
  if (!is.null(token) && token != "") {
    return (glue("Bearer {token}")) ;
  } else {
    stop("Invalid token provided for bearer authorization") ;
  }
}