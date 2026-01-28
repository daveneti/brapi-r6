# BrAPIClient Class

The BaseBrAPIClient class handles the configuration of the BrAPI
connection and is a wrapper class around httr2 functionality. Do not use
directly, only use the generated subclass BrAPIClient

## Details

The BaseBrAPIClient class handles the configuration of the BrAPIClient
connection and is a wrapper class around httr2 functionality

## Active bindings

- `server`:

  Get or sets the server. In the case of setting it returns the
  BrAPIClient to allow for chaining.

- `format`:

  Get or sets the format format of the response from the server, either
  'list', 'json', 'string' or 'raw'. In the case of setting it returns
  the BrAPIClient to allow for chaining.

- `authentication`:

  Sets the authentication, which can either by a Bearer token or a
  authentication provider function

- `dry_run`:

  Get or sets if the client should perform a dry run In the case of
  setting it returns the BrAPIClient to allow for chaining.

- `verbosity`:

  Get or sets the verbosity level to be used. See verbosity in httr2
  package for details In the case of setting it returns the BrAPIClient
  to allow for chaining.

- `max_tries`:

  Get or sets the maximum number of attempt each request will make. In
  the case of setting it returns the BrAPIClient to allow for chaining.

- `multi`:

  Controls what happens when a query argument value is a vector. If null
  it passes the query argument value as a concatenated string. Eg.
  c('example1', 'example1') will be converted to 'example1', 'example1'
  see .multi in https://httr2.r-lib.org/reference/req_url.html' In the
  case of setting it returns the BrAPIClient to allow for chaining.

## Methods

### Public methods

- [`BaseBrAPIClient$new()`](#method-BaseBrAPIClient-new)

- [`BaseBrAPIClient$perform_get_request()`](#method-BaseBrAPIClient-perform_get_request)

- [`BaseBrAPIClient$perform_post_request()`](#method-BaseBrAPIClient-perform_post_request)

- [`BaseBrAPIClient$clone()`](#method-BaseBrAPIClient-clone)

------------------------------------------------------------------------

### Method `new()`

Creates a new instance of this
[R6](https://r6.r-lib.org/reference/R6Class.html) class. It is not
recommended that this object is created separately from the getBrAPI
function

#### Usage

    BaseBrAPIClient$new(
      server = NULL,
      format = "list",
      authentication = NULL,
      dry_run = FALSE,
      verbosity = 0
    )

#### Arguments

- `server`:

  The BraPI server URL to be used

- `format`:

  The format of the response, either 'list', 'json', 'string' or 'raw'

- `authentication`:

  The authentication can either by a Bearer token or an authentication
  provider function

- `dry_run`:

  If TRUE the client will perform a dry run and not actually perform the
  requests, useful for debugging

- `verbosity`:

  The verbosity level to be used. See verbosity in httr2 package for
  details

------------------------------------------------------------------------

### Method `perform_get_request()`

Performs a GET request to the BraPI server

#### Usage

    BaseBrAPIClient$perform_get_request(
      endpoint = NULL,
      queryParams = list(),
      page = NULL,
      pageSize = NULL
    )

#### Arguments

- `endpoint`:

  The BraPI endpoint to be called

- `queryParams`:

  The query parameters to be used

- `page`:

  The page number of results to return, starting from 0

- `pageSize`:

  The maximum number of results to return per page

#### Returns

The response from the BraPI server

------------------------------------------------------------------------

### Method `perform_post_request()`

Performs a POST request to the BraPI server

#### Usage

    BaseBrAPIClient$perform_post_request(
      endpoint = NULL,
      queryParams = list(),
      page = NULL,
      pageSize = NULL
    )

#### Arguments

- `endpoint`:

  The BraPI endpoint to be called

- `queryParams`:

  The query parameters to be used

- `page`:

  The page number of results to return, starting from 0

- `pageSize`:

  The maximum number of results to return per page

#### Returns

The response from the BraPI server

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    BaseBrAPIClient$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
