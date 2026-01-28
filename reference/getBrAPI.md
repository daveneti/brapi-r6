# Creates a BrAPIClient R6 Class object.

Creates a BrAPIClient R6 Class object.

## Usage

``` r
getBrAPI(
  server = NULL,
  format = "list",
  authentication = NULL,
  dry_run = FALSE,
  verbosity = 0
)
```

## Arguments

- server:

  The BraPI server URL to be used

- format:

  The format of the response, either 'raw', 'json' or 'string'

- authentication:

  The authentication string to be used if the server requires
  authentication

- dry_run:

  If TRUE the client will perform a dry run and not actually perform the
  requests, useful for debugging

- verbosity:

  Set verbosity level for httr2 requests. 0 = none, 1 = basic, 2 =
  headers, 3 = body. Aslo controls verbosity of messages from this
  client. Defaults to 0.

## Value

A configured BrAPIClient R6 Class object.

## Examples

``` r
getBrAPI("www.brapiserver.com")
#> Error in curl::curl_parse_url(req$url, decode = FALSE): Failed to parse URL: Bad scheme
```
