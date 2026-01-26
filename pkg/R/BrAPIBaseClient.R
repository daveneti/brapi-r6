#' The BaseBrAPIClient class handles the configuration of the BrAPIClient connection and
#' is a wrapper class around httr2 functionality
#' @title BrAPIClient Class
#' @docType class
#' @description The BaseBrAPIClient class handles the configuration of the BrAPI connection and
#' is a wrapper class around httr2 functionality. Do not use directly, only use the generated subclass BrAPIClient
#'
#' @import R6
#' @export
BaseBrAPIClient <- R6Class(
  "BaseBrAPIClient",
  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    #' It is not recommended that this object is created separately from the getBrAPI function
    #' @param server The BraPI server URL to be used
    #' @param authentication The authentication provider function string to be used if the server requires authentication
    #' @param verbosity The verbosity level to be used. See verbosity in httr2 package for details
    #'
    initialize = function(server = NULL,
                          authentication = NULL,
                          verbosity = 0) {
      if (!is.numeric(verbosity)) {
        verbosity <- 0
      }
      
      if (verbosity < 0) {
        verbosity <- 0
      }
      
      if (verbosity > 3) {
        verbosity <- 3
      }
      
      private$.verbosity <- verbosity
      private$.authentication <- authentication
      private$.server <- server
    },
    perform_get_request = function(endpoint = NULL, queryParams = list(), page = NULL, pageSize = NULL) {
      
      if (!is.null(page)) {
        queryParams$page <- page
      }
      
      if (!is.null(pageSize)) {
        queryParams$pageSize <- pageSize
      }
      
      if (private$.verbosity > 0) {
        print("Query Params:")
        print(queryParams)
      }
      
      req <- private$create_request(endpoint)
      
      if (!is.null(private$.multi)) {
        req <- req |>
          req_url_query(!!!queryParams, .multi = private$.multi)
      } else {
        req <- req |>
          req_url_query(!!!queryParams)
      }
      
      if (private$.verbosity > 0) {
        print(req)
      }
      
      if (isTRUE(private$.dry_run)) {
        req |> httr2::req_dry_run()
      } else {
        req |>
          httr2::req_perform(verbosity = private$.verbosity) |>
          httr2::resp_body_json(simplifyVector = TRUE)
      }
    }
  ),
  active = list(
    #' @field server
    #' Get or sets the server. In the case of setting it returns the BrAPIClient to allow for chaining.
    server = function(value) {
      if (missing(value)) {
        return(private$.server)
      } else {
        if (is.null(private$.server) || private$.server != value) {
          if (private$.verbosity > 0) {
            message(paste0("Changing server to ", value))
          }
          private$.server <- private$validate_server(value)
        }
        return(self)
      }
    },
    #' @field dry_run
    #' Get or sets if the client should perform a dry run 
    #' In the case of setting it returns the BrAPIClient to allow for chaining.
    dry_run = function(value) {
      if (missing(value)) {
        return(private$.dry_run)
      } else {
        if (is.null(private$.dry_run) || private$.dry_run != value) {
          if (private$.verbosity > 0) {
            message(paste0("Changing dry_run to ", value))
          }
          if (!is.logical(value)) {
            stop("dry_run must be TRUE or FALSE")
          }
          private$.dry_run <- value
        }
        return(self)
      }
    },
    #' @field max_tries
    #' Get or sets the maximum number of attempt each request will make.
    #' In the case of setting it returns the BrAPIClient to allow for chaining.
    max_tries = function(value) {
      if (missing(value)) {
        return(private$.max_tries)
      } else {
        if (is.null(private$.max_tries) || private$.max_tries != value) {
          if (private$.verbosity > 0) {
            message(paste0("Changing max_tries to ", value))
          }
          if (!is.numeric(value)) {
            stop("max_tries must be numerical")
          }
          private$.max_tries <- value
        }
        return(self)
      }
    },
    #' @field multi
    #' Controls what happens when a value is a vector.
    #' see .multi in https://httr2.r-lib.org/reference/req_url.html'
    #' In the case of setting it returns the BrAPIClient to allow for chaining.
    multi = function(value) {
      if (missing(value)) {
        return(private$.multi)
      } else {
        if (is.null(private$.multi) || private$.multi != value) {
          if (private$.verbosity > 0) {
            message(paste0("Changing multi to ", value))
          }
          if (!is.character(value)) {
            stop("multi must be character")
          }
          private$.multi <- value
        }
        return(self)
      }
    }
  ),
  private = list(
    .server = NULL,
    .authentication = NULL,
    .dry_run = TRUE,
    .max_tries = 1,
    .multi = NULL,
    .verbosity = 0,
    guess_username = function() {
      # rstudio server
      username <- unname(Sys.getenv("LOGNAME"))
      
      # plain R
      if (username == "") {
        username <- unname(tolower(Sys.info()["user"]))
      }
      
      if (username == "" || username == "unknown")
        stop("Can't detect username automatically")
      
      return(username)
    },
    validate_server = function() {
      perform_request(self, 'serverinfo')
    },
    create_request = function(endpoint = NULL, method = NULL) {
      
      req <- httr2::request(private$.server)
      
      if (!is.null(endpoint)) {
        req <- req |> httr2::req_url_path_append(endpoint)
      }
      
      if (!is.null(method)) {
        req <- req |> httr2::req_method(method)
      }
      
      if (private$.max_tries > 1) {
        req <- req |> httr2::req_retry(max_tries = private$.max_tries)
      }
      
      authentication <- private$.authentication
      
      if (!is.null(authentication)) {
        if (is.function(authentication)) {
          req <- req |> authentication()
        } else {
          req <- req |> httr2::req_auth_bearer_token(authentication)
        }
      }
      
      return (req)
    }
  )
)
