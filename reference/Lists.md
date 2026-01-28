# Lists Class

The Lists class handles calling the BraAPI server and is a wrapper class
around httr2 functionality for the List entity

## Details

The Lists class handles calling the BraAPI server and is a wrapper class
around httr2 functionality for the List entity

## Methods

### Public methods

- [`Lists$new()`](#method-Lists-new)

- [`Lists$get()`](#method-Lists-get)

- [`Lists$getAll()`](#method-Lists-getAll)

- [`Lists$search()`](#method-Lists-search)

- [`Lists$searchResult()`](#method-Lists-searchResult)

- [`Lists$create()`](#method-Lists-create)

- [`Lists$update()`](#method-Lists-update)

- [`Lists$clone()`](#method-Lists-clone)

------------------------------------------------------------------------

### Method `new()`

Creates a new instance of this
[R6](https://r6.r-lib.org/reference/R6Class.html) class. It is not
recommended that this object is created separately from the BrAPIClient

#### Usage

    Lists$new(client)

#### Arguments

- `client`:

  THe BrAPIClient to be used for server communication

------------------------------------------------------------------------

### Method [`get()`](https://rdrr.io/r/base/get.html)

Gets a List object by DbId from the BrAPI server

#### Usage

    Lists$get(id)

#### Arguments

- `id`:

  The DbIid of the List to be returned

#### Returns

returns a List object by ID.

------------------------------------------------------------------------

### Method `getAll()`

Gets a list List objects from the BrAPI server Note the filtering
arguments are all optional and can be combined to filter the results The
value of the filters an be a single value or a vector of values

#### Usage

    Lists$getAll(
      dateCreatedRangeStart = NULL,
      dateCreatedRangeEnd = NULL,
      dateModifiedRangeStart = NULL,
      dateModifiedRangeEnd = NULL,
      listDbIds = NULL,
      listNames = NULL,
      listOwnerNames = NULL,
      listOwnerPersonDbIds = NULL,
      listSources = NULL,
      listType = NULL,
      page = 0,
      pageSize = 1000
    )

#### Arguments

- `dateCreatedRangeStart`:

  Define the beginning for an interval of time and only include Lists
  that are created within this interval.

- `dateCreatedRangeEnd`:

  Define the end for an interval of time and only include Lists that are
  created within this interval.

- `dateModifiedRangeStart`:

  Define the beginning for an interval of time and only include Lists
  that are modified within this interval.

- `dateModifiedRangeEnd`:

  Define the end for an interval of time and only include Lists that are
  modified within this interval.

- `listDbIds`:

  An array of primary database identifiers to identify a set of Lists

- `listNames`:

  An array of human readable names to identify a set of Lists

- `listOwnerNames`:

  An array of names for the people or entities who are responsible for a
  set of Lists

- `listOwnerPersonDbIds`:

  An array of primary database identifiers to identify people or
  entities who are responsible for a set of Lists

- `listSources`:

  An array of terms identifying lists from different sources (ie 'USER',
  'SYSTEM', etc)

- `listType`:

- `page`:

  The page number of results to return, starting from 0

- `pageSize`:

  The maximum number of results to return per page

#### Returns

returns a paged and filtered list of List objects.

------------------------------------------------------------------------

### Method [`search()`](https://rdrr.io/r/base/search.html)

Searches for List objects on the BrAPI server. The server may return the
paged results or a search result ID for later retrieval

#### Usage

    Lists$search(
      dateCreatedRangeStart = NULL,
      dateCreatedRangeEnd = NULL,
      dateModifiedRangeStart = NULL,
      dateModifiedRangeEnd = NULL,
      listDbIds = NULL,
      listNames = NULL,
      listOwnerNames = NULL,
      listOwnerPersonDbIds = NULL,
      listSources = NULL,
      listType = NULL,
      page = 0,
      pageSize = 1000
    )

#### Arguments

- `dateCreatedRangeStart`:

  Define the beginning for an interval of time and only include Lists
  that are created within this interval.

- `dateCreatedRangeEnd`:

  Define the end for an interval of time and only include Lists that are
  created within this interval.

- `dateModifiedRangeStart`:

  Define the beginning for an interval of time and only include Lists
  that are modified within this interval.

- `dateModifiedRangeEnd`:

  Define the end for an interval of time and only include Lists that are
  modified within this interval.

- `listDbIds`:

  An array of primary database identifiers to identify a set of Lists

- `listNames`:

  An array of human readable names to identify a set of Lists

- `listOwnerNames`:

  An array of names for the people or entities who are responsible for a
  set of Lists

- `listOwnerPersonDbIds`:

  An array of primary database identifiers to identify people or
  entities who are responsible for a set of Lists

- `listSources`:

  An array of terms identifying lists from different sources (ie 'USER',
  'SYSTEM', etc)

- `listType`:

  using the searchResult function

- `page`:

  The page number of results to return, starting from 0

- `pageSize`:

  The maximum number of results to return per page

#### Returns

returns the search result or an ID to the results.

Get the result of a search for List objects on the BrAPI server. If the
server returned search result ID for later retrieval, use this function
to get the results.

------------------------------------------------------------------------

### Method `searchResult()`

#### Usage

    Lists$searchResult(searchResultId, page = 0, pageSize = 1000)

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

### Method `create()`

Creates a List object on the BrAPI server.

#### Usage

    Lists$create(newValue)

#### Arguments

- `newValue`:

  The new List object to be created

------------------------------------------------------------------------

### Method [`update()`](https://rdrr.io/r/stats/update.html)

Creates a List object on the BrAPI server.

#### Usage

    Lists$update(value)

#### Arguments

- `value`:

  The updated List object to be sent to the server

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    Lists$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Examples

``` r
Lists$new()
#> Error in initialize(...): argument "client" is missing, with no default
```
