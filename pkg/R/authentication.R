#' The BaseAuth is a super class for all classes that provide authentication functionality for httr2 requests
#' @title BaseAuth Class
#' @docType class
#' @description The BaseAuth is a super class for all classes that provide authentication functionality for httr2 requests
#'
#' @import R6
#' @export
BaseAuth <- R6Class(
  "BaseAuth",
  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    #' It is not recommended that this object is created separately
    #'
    initialize = function() {
    },
    #' @description
    #' Provides the authentication function for httr2 requests
    #' needs to be implemented in subclasses
    #' @param req The httr2 request object
    #' @return The httr2 request object with the Basic Authorization header added
    authentication = function(req) {
      stop("Use a subclass that implements this method")
    }
  )
)

#' Creates a Basic Authorization provider for BrAPIClient R6 Class object.
#'
#' @param username The username to be used for Basic Authorization. If NULL it will attempt to guess the username from the system.
#' @param password The password to be used for Basic Authorization. If NULL it will prompt for the password.
#' @return A configured Basic Authorization provider R6 Class object.
#' @examples
#' basic_authentication("usernamre", "password")
#' @import httr2
#' @import getPass
#' @export
basic_authentication <- function(username = guess_username(), password = NULL) {
  if (is.null(password)) {
    password <- getPass::getPass("Enter password: ")
  }

  return(BasicAuth$new(username = username, password = password));
}

#' The BasicAuth class provides basic authentication functionality for httr2 requests
#' @title BasicAuth Class
#' @docType class
#' @description The BasicAuth class handles Basic Authorization for httr2 requests
#'
#' @import httr2
#' @import R6
#' @export
BasicAuth <- R6Class(
  "BasicAuth",
  inherit = BaseAuth,
  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    #' It is not recommended that this object is created separately from the basic_authentication() function
    #' @param username The username to be used for Basic Authorization.
    #' @param password The password to be used for Basic Authorization.
    #'
    initialize = function(username = NULL, password = NULL) {
      private$.username <- username
      private$.password <- password
    },
    #' @description
    #' Provides the authentication function for httr2 requests
    #' @param req The httr2 request object
    #' @return The httr2 request object with the Basic Authorization header added
    authentication = function(req) {
      return(req |> httr2::req_auth_basic(private$.username, private$.password))
    }
  ),
  private = list(
    .username = NULL,
    .password = NULL
  )
)

#' Creates an OAuth provider for BrAPIClient R6 Class object.
#''
#' @param id The client ID to be used for OAuth Authorization.
#' @param secret The client secret to be used for OAuth Authorization.
#' @param token_url The token URL to be used for OAuth Authorization.
#' @param name The name to be used for the OAuth client.
#' @param auth_url The authorization URL to be used for OAuth Authorization.
#' @param scope The scope to be used for OAuth Authorization.
#' @param pkce Whether to use PKCE (Proof Key for Code Exchange) for OAuth Authorization. Default is TRUE.
#' @param auth_params Additional authorization parameters to be used for OAuth Authorization.
#' @param token_params Additional token parameters to be used for OAuth Authorization.
#' @param redirect_uri The redirect URI to be used for OAuth Authorization.
#' @return A configured OAuth provider R6 Class object.
#' @examples
#' oauth_flow("client_id", "client_secret", "https://example.com/token", "https://example.com/auth")
#' @import httr2
#' @import R6
#' @export
oauth_flow <- function(id,
                       secret = NULL,
                       token_url,
                       name = NULL,
                       auth_url = NULL,
                       scope = NULL,
                       pkce = TRUE,
                       auth_params = NULL,
                       token_params = NULL,
                       redirect_uri = NULL) {
  return(OAuthFlow$new(id = id,
                       secret = secret,
                       token_url = token_url,
                       name = name,
                       auth_url = auth_url,
                       scope = scope,
                       pkce = pkce,
                       auth_params = auth_params,
                       token_params = token_params,
                       redirect_uri = redirect_uri
  ))
}

#' The OAuthFlow class provides OAuth functionality for httr2 requests
#' @title OAuthFlow Class
#' @docType class
#' @description The OAuthFlow class handles OAuth for httr2 requests
#'
#' @import httr2
#' @import R6
#' @export
OAuthFlow <- R6Class(
  "OAuthFlow",
  inherit = BaseAuth,
  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    #' It is not recommended that this object is created separately from the oauth_flow() function
    #' See https://httr2.r-lib.org/reference/req_oauth_auth_code.html
    #' @param id The client ID to be used for OAuth Authorization.
    #' @param secret The client secret to be used for OAuth Authorization.
    #' @param token_url The token URL to be used for OAuth Authorization.
    #' @param name The name to be used for the OAuth client.
    #' @param auth_url The authorization URL to be used for OAuth Authorization.
    #' @param scope The scope to be used for OAuth Authorization.
    #' @param pkce Whether to use PKCE (Proof Key for Code Exchange) for OAuth Authorization. Default is TRUE.
    #' @param auth_params Additional authorization parameters to be used for OAuth Authorization.
    #' @param token_params Additional token parameters to be used for OAuth Authorization.
    #' @param redirect_uri The redirect URI to be used for OAuth Authorization.
    #'
    initialize = function(id,
                          secret = NULL,
                          token_url,
                          name = "OAuthFlow",
                          auth_url,
                          scope = NULL,
                          pkce = TRUE,
                          auth_params = list(),
                          token_params = list(),
                          redirect_uri = oauth_redirect_uri()) {
      private$.client <- oauth_client(
        id = id,
        secret = secret,
        token_url = token_url,
        name = name
      )
      private$.auth_url <- auth_url
      private$.scope <- scope
      private$.pkce <- pkce
      private$.auth_params <- auth_params
      private$.token_params <- token_params
      private$.redirect_uri <- redirect_uri
    },
    #' @description
    #' Provides the authentication function for httr2 requests
    #' @param req The httr2 request object
    #' @return The httr2 request object with the Basic Authorization header added
    authentication = function(req) {
      return(req |> httr2::req_oauth_auth_code(
        client = private$.client,
        auth_url = private$.auth_url,
        scope = private$.scope,
        pkce = private$.pkce,
        auth_params = private$.auth_params,
        token_params = private$.token_params,
        redirect_uri = private$.redirect_uri
      ))
    }
  ),
  private = list(
    .client = NULL,
    .auth_url = NULL,
    .scope = NULL,
    .pkce = NULL,
    .auth_params = NULL,
    .token_params = NULL,
    .redirect_uri = NULL
  )
)

#' Creates an OAuth Client Credentials provider for BrAPIClient R6 Class object.
#''
#' @param id The client ID to be used for OAuth Authorization.
#' @param secret The client secret to be used for OAuth Authorization.
#' @param token_url The token URL to be used for OAuth Authorization.
#' @param name The name to be used for the OAuth client.
#' @param scope The scope to be used for OAuth Authorization.
#' @param token_params Additional token parameters to be used for OAuth Authorization.
#' @return A configured OAuth provider R6 Class object.
#' @examples
#' oauth_flow("client_id", "client_secret", "https://example.com/token")
#' @import httr2
#' @import R6
#' @export
client_credentials <- function(id,
                       secret = NULL,
                       token_url,
                       name = NULL,
                       scope = NULL,
                       token_params = NULL) {
  return(OAuthClientCredentials$new(id = id,
                       secret = secret,
                       token_url = token_url,
                       name = name,
                       scope = scope,
                       token_params = token_params
  ))
}

#' The OAuthClientCredentials class provides OAuth Client Credentials functionality for httr2 requests
#' @title OAuthClientCredentials Class
#' @docType class
#' @description The OAuthClientCredentials class handles OAuth Client Credentials for httr2 requests
#'
#' @import httr2
#' @import R6
#' @export
OAuthClientCredentials <- R6Class(
  "OAuthClientCredentials",
  inherit = BaseAuth,
  public = list(
        #' @description
        #' Creates a new instance of this [R6][R6::R6Class] class.
        #' It is not recommended that this object is created separately from the client_credentials() function
        #' See https://httr2.r-lib.org/reference/req_oauth_auth_code.html
        #' @param id The client ID to be used for OAuth Authorization.
        #' @param secret The client secret to be used for OAuth Authorization.
        #' @param token_url The token URL to be used for OAuth Authorization.
        #' @param name The name to be used for the OAuth client.
        #' @param scope The scope to be used for OAuth Authorization.
        #' @param token_params Additional token parameters to be used for OAuth Authorization.
        #'
    initialize = function(id,
                          secret = NULL,
                          token_url,
                          name = "OAuthClientCredentials",
                          scope = NULL,
                          token_params = list()) {
      private$.client <- oauth_client(
        id = id,
        secret = secret,
        token_url = token_url,
        name = name
      )
      private$.scope <- scope
      private$.token_params <- token_params
    },
        #' @description
        #' Provides the authentication function for httr2 requests
        #' @param req The httr2 request object
        #' @return The httr2 request object with the Basic Authorization header added
    authentication = function(req) {
      return(req |> httr2::req_oauth_client_credentials(
        client = private$.client,
        scope = private$.scope,
        token_params = private$.token_params
      ))
    }
  ),
  private = list(
    .client = NULL,
    .scope = NULL,
    .token_params = NULL
  )
)

#' Attempts to guess the username from the system environment
#' @return The guessed username
#' @examples
#' guess_username()
guess_username <- function() {
  # rstudio server
  username <- unname(Sys.getenv("LOGNAME"))

  # plain R
  if (username == "") {
    username <- unname(tolower(Sys.info()["user"]))
  }

  if (username == "" || username == "unknown")
    stop("Can't detect username automatically")

  return(username)
}