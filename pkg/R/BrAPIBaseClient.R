#' The BaseBrAPIClient class handles the configuration of the BrAPIClient connection and
#' is a wrapper class around httr2 functionality
#' @title BrAPIClient Class
#' @docType class
#' @description The BaseBrAPIClient class handles the configuration of the BrAPI connection and
#' is a wrapper class around httr2 functionality. Do not use directly, only use the generated subclass BrAPIClient
#' @keywords internal
#' @import R6
#' @export
BaseBrAPIClient <- R6Class(
  "BaseBrAPIClient",
  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    #' It is not recommended that this object is created separately from the getBrAPI function
    #' @param server The BraPI server URL to be used
    #' @param format The format of the response, either 'list', 'json', 'string' or 'raw'
    #' @param authentication The authentication can either by a Bearer token or an authentication provider function
    #' @param dry_run If TRUE the client will perform a dry run and not actually perform the requests, useful for debugging
    #' @param verbosity The verbosity level to be used. See verbosity in httr2 package for details
    #'
    initialize = function(server = NULL,
                          format = 'list',
                          authentication = NULL,
                          dry_run = FALSE,
                          verbosity = 0) {
      if (!is.numeric(verbosity)) {

        formats <- c( 'list', 'json', 'string', 'raw')

        if (!(format %in% formats)) {
          stop (glue::glue("format '{format}' is not supported. Supported formats are: {paste(formats, collapse=', ')}"))
        }

        verbosity <- 0
      }
      
      if (verbosity < 0) {
        verbosity <- 0
      }
      
      if (verbosity > 3) {
        verbosity <- 3
      }

      private$.server <- server
      private$.format <- format
      private$.authentication <- authentication
      private$.verbosity <- verbosity
      private$.dry_run <- dry_run
      private$validate_server()
    },
    #' @description
    #' Performs a GET request to the BraPI server
    #' @param endpoint The BraPI endpoint to be called
    #' @param queryParams The query parameters to be used
    #' @param page The page number of results to return, starting from 0
    #' @param pageSize The maximum number of results to return per page
    #' @return The response from the BraPI server
    perform_get_request = function(endpoint = NULL, queryParams = list(), page = NULL, pageSize = NULL) {
      if (!is.null(page)) {
        queryParams$page <- page
      }
      
      if (!is.null(pageSize)) {
        queryParams$pageSize <- pageSize
      }

      if (private$.verbosity > 0) {
        message("Query Params:")
        print(queryParams)
      }

      req <- private$create_request(endpoint, verbosity = private$.verbosity)
      
      if (!is.null(private$.multi)) {
        req <- req |>
          req_url_query(!!!queryParams, .multi = private$.multi)
      } else {
        req <- req |>
          req_url_query(!!!queryParams)
      }

      if (private$.verbosity > 0) {
        message("Sending Request:")
        print(req)
      }

      private$perform_request(req, format = private$.format, dry_run = private$dry_run, verbosity = private$.verbosity)
    },
    #' @description
    #' Performs a POST request to the BraPI server
    #' @param endpoint The BraPI endpoint to be called
    #' @param queryParams The query parameters to be used
    #' @param page The page number of results to return, starting from 0
    #' @param pageSize The maximum number of results to return per page
    #' @return The response from the BraPI server
    perform_post_request = function(endpoint = NULL, queryParams = list(), page = NULL, pageSize = NULL) {
      
      if (!is.null(page)) {
        queryParams$page <- page
      }
      
      if (!is.null(pageSize)) {
        queryParams$pageSize <- pageSize
      }
      
      if (private$.verbosity > 0) {
        message("Query Params:")
        message(queryParams)
      }
      
      req <- private$create_request(endpoint, method = 'POST', verbosity = private$.verbosity)
      
      req <- req |>
        req_headers("Content-Type" = "application/json")
      
      # For JSON body
      req <- req |>
        req_body_json(queryParams)

      private$perform_request(req, format = private$.format, dry_run = private$dry_run, verbosity = private$.verbosity)
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
          private$.server <- value
          private$validate_server()
        }
        return(self)
      }
    },
    #' @field format
    #' Get or sets the format format of the response from the server, either  'list', 'json', 'string' or 'raw'.
    #' In the case of setting it returns the BrAPIClient to allow for chaining.
    format = function(value) {
      if (missing(value)) {
        return(private$.format)
      } else {
        if (is.null(private$.format) || private$.format != value) {
          if (private$.verbosity > 0) {
            message(paste0("Changing format to ", value))
          }
          private$.format <- value
        }
        return(self)
      }
    },
    #' @field authentication
    #' Sets the authentication, which can either by a Bearer token or a authentication provider function
    authentication = function(value) {
      if (missing(value)) {
        stop("Authentication is private, you can set it but not see it ;)")
      } else {
        if (is.null(private$.server) || private$.server != value) {
          if (private$.verbosity > 0) {
            message("Changing authentication")
          }
          private$.authentication <- authentication
          private$validate_server()
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
          if (!is.logical(value)) {
            stop("dry_run must be TRUE or FALSE")
          }
          
          if (private$.verbosity > 0) {
            message(paste0("Changing dry_run to ", value))
          }
          private$.dry_run <- value
        }
        return(self)
      }
    },
    #' @field verbosity
    #' Get or sets the verbosity level to be used. See verbosity in httr2 package for details
    #' In the case of setting it returns the BrAPIClient to allow for chaining.
    verbosity = function(value) {
      if (missing(value)) {
        return(private$.verbosity)
      } else {
        if (is.null(private$.verbosity) || private$.verbosity != value) {
          if (!is.numeric(value)) {
            stop("value must be numerical")
          }
          
          if (private$.verbosity > 0 || value > 0) {
            message(paste0("Changing verbosity to ", value))
          }
          private$.verbosity <- value
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
          if (!is.numeric(value)) {
            stop("max_tries must be numerical")
          }
          
          if (private$.verbosity > 0) {
            message(paste0("Changing max_tries to ", value))
          }
          private$.max_tries <- value
        }
        return(self)
      }
    },
    #' @field multi
    #' Controls what happens when a query argument value is a vector. If null it passes the 
    #' query argument value as a concatenated string. Eg. c('example1', 'example1') will
    #' be converted to ['example1', 'example1']
    #' see .multi in https://httr2.r-lib.org/reference/req_url.html'
    #' In the case of setting it returns the BrAPIClient to allow for chaining.
    multi = function(value) {
      if (missing(value)) {
        return(private$.multi)
      } else {
        if (is.null(private$.multi) || private$.multi != value) {
          if (!is.character(value)) {
            stop("multi must be character")
          }
          
          if (private$.verbosity > 0) {
            message(paste0("Changing multi to ", value))
          }
          private$.multi <- value
        }
        return(self)
      }
    }
  ),
  private = list(
    .server = NULL,
    .format = 'list',
    .authentication = NULL,
    .dry_run = FALSE,
    .max_tries = 1,
    .multi = NULL,
    .verbosity = 0,
    validate_server = function() {

      if (private$.verbosity > 0) {
        message (glue::glue("Validating server at {private$.server}"))
      }

      if (private$.server == "" || is.null(private$.server)) {
        stop("Server URL is not set")
      }

      if (private$.dry_run > 0) {
        if (private$.verbosity > 0) {
          message (glue::glue("Set to dry run mode, not validating server at {private$.server}"))
        }

        return()
      }

      req <- private$create_request('serverinfo', verbosity = 0)

      response <- private$perform_request(req, format = 'json', dry_run = FALSE, verbosity = 0)
      
      if (!is.null(response$metadata) && !is.null(response$metadata$status) && !is.null(response$metadata$status$code) && response$metadata$status$code == 200) {
        message ("Server is valid")
      } else {
        if (!is.null(!is.null(response$metadata) && response$metadata$status)) {
          message ("Server could not be validated with call to /serverinfo due to:")
          print(response$metadata$status)
        } else {
          message ("Server could not be validated with call to /serverinfo due to unknown error")
          message ("Response was:")
          print(response)
        }
      }
    },
    create_request = function(endpoint = NULL, method = NULL, verbosity = 0) {
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
        if (inherits(authentication, "BaseAuth")) {
          if (verbosity > 0) {
            message ("Using authentication provider function")
          }
          req <- req |> authentication$authentication()

        } else {
          if (is.character(x) && length(x) == 1) {
            if (verbosity > 0) {
              message ("Using Bearer token authentication")
            }
            req <- req |> httr2::req_auth_bearer_token(authentication)
          } else {
            stop("Unknown authentication method!")
          }
        }
      }

      return (req)
    },
    perform_request = function(req, format = 'list', dry_run = FALSE, verbosity = 0) {
      if (verbosity > 0) {
        message(glue("Sending Request: {format}"))
        print(req)
      }

      if (isTRUE(dry_run)) {
        req |> httr2::req_dry_run()
      } else {
        resp <- req |>
          httr2::req_perform(verbosity = verbosity)

        if (format == 'list') {
          resp <- resp |>
            httr2::resp_body_json(simplifyVector = TRUE)

          resp <- parseJsonResonse(resp)
        } else if (format == 'json') {
          resp <- resp |>
            httr2::resp_body_json(simplifyVector = TRUE)
        } else if (format == 'string') {
          resp <- resp |>
            httr2::resp_body_string()
        } else if (format == 'raw') {
          resp <- resp |>
            httr2::resp_body_raw()
        }
      }

      return (resp)
    }
  )
)
