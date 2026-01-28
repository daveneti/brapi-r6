# MarkerPositions Class

The MarkerPositions class handles calling the BraAPI server and is a
wrapper class around httr2 functionality for the MarkerPosition entity

## Details

The MarkerPositions class handles calling the BraAPI server and is a
wrapper class around httr2 functionality for the MarkerPosition entity

## Methods

### Public methods

- [`MarkerPositions$new()`](#method-MarkerPositions-new)

- [`MarkerPositions$getAll()`](#method-MarkerPositions-getAll)

- [`MarkerPositions$search()`](#method-MarkerPositions-search)

- [`MarkerPositions$searchResult()`](#method-MarkerPositions-searchResult)

- [`MarkerPositions$clone()`](#method-MarkerPositions-clone)

------------------------------------------------------------------------

### Method `new()`

Creates a new instance of this
[R6](https://r6.r-lib.org/reference/R6Class.html) class. It is not
recommended that this object is created separately from the BrAPIClient

#### Usage

    MarkerPositions$new(client)

#### Arguments

- `client`:

  THe BrAPIClient to be used for server communication

------------------------------------------------------------------------

### Method `getAll()`

Gets a list MarkerPosition objects from the BrAPI server Note the
filtering arguments are all optional and can be combined to filter the
results The value of the filters an be a single value or a vector of
values

#### Usage

    MarkerPositions$getAll(
      mapDbIds = NULL,
      linkageGroupNames = NULL,
      variantDbIds = NULL,
      minPosition = NULL,
      maxPosition = NULL,
      page = 0,
      pageSize = 1000
    )

#### Arguments

- `mapDbIds`:

  A list of IDs which uniquely identify `GenomeMaps` within the given
  database server

- `linkageGroupNames`:

  A list of Uniquely Identifiable linkage group names

- `variantDbIds`:

  A list of IDs which uniquely identify `Variants` within the given
  database server

- `minPosition`:

  The minimum position of markers in a given map

- `maxPosition`:

  The maximum position of markers in a given map

- `page`:

  The page number of results to return, starting from 0

- `pageSize`:

  The maximum number of results to return per page

#### Returns

returns a paged and filtered list of MarkerPosition objects.

------------------------------------------------------------------------

### Method [`search()`](https://rdrr.io/r/base/search.html)

Searches for MarkerPosition objects on the BrAPI server. The server may
return the paged results or a search result ID for later retrieval

#### Usage

    MarkerPositions$search(
      mapDbIds = NULL,
      linkageGroupNames = NULL,
      variantDbIds = NULL,
      minPosition = NULL,
      maxPosition = NULL,
      page = 0,
      pageSize = 1000
    )

#### Arguments

- `mapDbIds`:

  A list of IDs which uniquely identify `GenomeMaps` within the given
  database server

- `linkageGroupNames`:

  A list of Uniquely Identifiable linkage group names

- `variantDbIds`:

  A list of IDs which uniquely identify `Variants` within the given
  database server

- `minPosition`:

  The minimum position of markers in a given map

- `maxPosition`:

  The maximum position of markers in a given map using the searchResult
  function

- `page`:

  The page number of results to return, starting from 0

- `pageSize`:

  The maximum number of results to return per page

#### Returns

returns the search result or an ID to the results.

Get the result of a search for MarkerPosition objects on the BrAPI
server. If the server returned search result ID for later retrieval, use
this function to get the results.

------------------------------------------------------------------------

### Method `searchResult()`

#### Usage

    MarkerPositions$searchResult(searchResultId, page = 0, pageSize = 1000)

#### Arguments

- `searchResultId`:

  The search result ID returned from a previous search call

- `page`:

  The page number of results to return, starting from 0

- `pageSize`:

  The maximum number of results to return per page

#### Returns

returns the search result or by ID to the results.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    MarkerPositions$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Examples

``` r
MarkerPositions$new()
#> Error in initialize(...): argument "client" is missing, with no default
```
