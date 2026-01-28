# Locations Class

The Locations class handles calling the BraAPI server and is a wrapper
class around httr2 functionality for the Location entity

## Details

The Locations class handles calling the BraAPI server and is a wrapper
class around httr2 functionality for the Location entity

## Methods

### Public methods

- [`Locations$new()`](#method-Locations-new)

- [`Locations$get()`](#method-Locations-get)

- [`Locations$getAll()`](#method-Locations-getAll)

- [`Locations$search()`](#method-Locations-search)

- [`Locations$searchResult()`](#method-Locations-searchResult)

- [`Locations$create()`](#method-Locations-create)

- [`Locations$update()`](#method-Locations-update)

- [`Locations$clone()`](#method-Locations-clone)

------------------------------------------------------------------------

### Method `new()`

Creates a new instance of this
[R6](https://r6.r-lib.org/reference/R6Class.html) class. It is not
recommended that this object is created separately from the BrAPIClient

#### Usage

    Locations$new(client)

#### Arguments

- `client`:

  THe BrAPIClient to be used for server communication

------------------------------------------------------------------------

### Method [`get()`](https://rdrr.io/r/base/get.html)

Gets a Location object by DbId from the BrAPI server

#### Usage

    Locations$get(id)

#### Arguments

- `id`:

  The DbIid of the Location to be returned

#### Returns

returns a Location object by ID.

------------------------------------------------------------------------

### Method `getAll()`

Gets a list Location objects from the BrAPI server Note the filtering
arguments are all optional and can be combined to filter the results The
value of the filters an be a single value or a vector of values

#### Usage

    Locations$getAll(
      commonCropNames = NULL,
      locationDbIds = NULL,
      locationNames = NULL,
      programDbIds = NULL,
      programNames = NULL,
      abbreviations = NULL,
      altitudeMin = NULL,
      altitudeMax = NULL,
      countryCodes = NULL,
      countryNames = NULL,
      coordinates = NULL,
      instituteAddresses = NULL,
      instituteNames = NULL,
      locationTypes = NULL,
      parentLocationDbIds = NULL,
      parentLocationNames = NULL,
      page = 0,
      pageSize = 1000
    )

#### Arguments

- `commonCropNames`:

  The BrAPI Common Crop Name is the simple, generalized, widely accepted
  name of the organism being researched.

- `locationDbIds`:

  The location ids to search for

- `locationNames`:

  A human readable names to search for

- `programDbIds`:

  A BrAPI Program represents the high level organization or group who is
  responsible for conducting trials and studies.

- `programNames`:

  Use this parameter to only return results associated with the given
  program names.

- `abbreviations`:

  A list of shortened human readable names for a set of Locations

- `altitudeMin`:

  The minimum altitude to search for

- `altitudeMax`:

  The maximum altitude to search for

- `countryCodes`:

  ISO_3166-1_alpha-3(https://en.

- `countryNames`:

  The full name of the country to search for

- `coordinates`:

- `instituteAddresses`:

  The street address of the institute to search for

- `instituteNames`:

  The name of the institute to search for

- `locationTypes`:

  The type of location this represents (ex.

- `parentLocationDbIds`:

  The unique identifier for a Location \<br/\> The Parent Location
  defines the encompassing location that this location belongs to.

- `parentLocationNames`:

  A human readable name for a location \<br/\> The Parent Location
  defines the encompassing location that this location belongs to.

- `page`:

  The page number of results to return, starting from 0

- `pageSize`:

  The maximum number of results to return per page

#### Returns

returns a paged and filtered list of Location objects.

------------------------------------------------------------------------

### Method [`search()`](https://rdrr.io/r/base/search.html)

Searches for Location objects on the BrAPI server. The server may return
the paged results or a search result ID for later retrieval

#### Usage

    Locations$search(
      commonCropNames = NULL,
      locationDbIds = NULL,
      locationNames = NULL,
      programDbIds = NULL,
      programNames = NULL,
      abbreviations = NULL,
      altitudeMin = NULL,
      altitudeMax = NULL,
      countryCodes = NULL,
      countryNames = NULL,
      coordinates = NULL,
      instituteAddresses = NULL,
      instituteNames = NULL,
      locationTypes = NULL,
      parentLocationDbIds = NULL,
      parentLocationNames = NULL,
      page = 0,
      pageSize = 1000
    )

#### Arguments

- `commonCropNames`:

  The BrAPI Common Crop Name is the simple, generalized, widely accepted
  name of the organism being researched.

- `locationDbIds`:

  The location ids to search for

- `locationNames`:

  A human readable names to search for

- `programDbIds`:

  A BrAPI Program represents the high level organization or group who is
  responsible for conducting trials and studies.

- `programNames`:

  Use this parameter to only return results associated with the given
  program names.

- `abbreviations`:

  A list of shortened human readable names for a set of Locations

- `altitudeMin`:

  The minimum altitude to search for

- `altitudeMax`:

  The maximum altitude to search for

- `countryCodes`:

  ISO_3166-1_alpha-3(https://en.

- `countryNames`:

  The full name of the country to search for

- `coordinates`:

- `instituteAddresses`:

  The street address of the institute to search for

- `instituteNames`:

  The name of the institute to search for

- `locationTypes`:

  The type of location this represents (ex.

- `parentLocationDbIds`:

  The unique identifier for a Location \<br/\> The Parent Location
  defines the encompassing location that this location belongs to.

- `parentLocationNames`:

  A human readable name for a location \<br/\> The Parent Location
  defines the encompassing location that this location belongs to. using
  the searchResult function

- `page`:

  The page number of results to return, starting from 0

- `pageSize`:

  The maximum number of results to return per page

#### Returns

returns the search result or an ID to the results.

Get the result of a search for Location objects on the BrAPI server. If
the server returned search result ID for later retrieval, use this
function to get the results.

------------------------------------------------------------------------

### Method `searchResult()`

#### Usage

    Locations$searchResult(searchResultId, page = 0, pageSize = 1000)

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

Creates a Location object on the BrAPI server.

#### Usage

    Locations$create(newValue)

#### Arguments

- `newValue`:

  The new Location object to be created

------------------------------------------------------------------------

### Method [`update()`](https://rdrr.io/r/stats/update.html)

Creates a Location object on the BrAPI server.

#### Usage

    Locations$update(value)

#### Arguments

- `value`:

  The updated Location object to be sent to the server

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    Locations$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Examples

``` r
Locations$new()
#> Error in initialize(...): argument "client" is missing, with no default
```
