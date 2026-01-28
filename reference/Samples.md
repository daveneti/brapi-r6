# Samples Class

The Samples class handles calling the BraAPI server and is a wrapper
class around httr2 functionality for the Sample entity

## Details

The Samples class handles calling the BraAPI server and is a wrapper
class around httr2 functionality for the Sample entity

## Methods

### Public methods

- [`Samples$new()`](#method-Samples-new)

- [`Samples$get()`](#method-Samples-get)

- [`Samples$getAll()`](#method-Samples-getAll)

- [`Samples$search()`](#method-Samples-search)

- [`Samples$searchResult()`](#method-Samples-searchResult)

- [`Samples$create()`](#method-Samples-create)

- [`Samples$update()`](#method-Samples-update)

- [`Samples$clone()`](#method-Samples-clone)

------------------------------------------------------------------------

### Method `new()`

Creates a new instance of this
[R6](https://r6.r-lib.org/reference/R6Class.html) class. It is not
recommended that this object is created separately from the BrAPIClient

#### Usage

    Samples$new(client)

#### Arguments

- `client`:

  THe BrAPIClient to be used for server communication

------------------------------------------------------------------------

### Method [`get()`](https://rdrr.io/r/base/get.html)

Gets a Sample object by DbId from the BrAPI server

#### Usage

    Samples$get(id)

#### Arguments

- `id`:

  The DbIid of the Sample to be returned

#### Returns

returns a Sample object by ID.

------------------------------------------------------------------------

### Method `getAll()`

Gets a list Sample objects from the BrAPI server Note the filtering
arguments are all optional and can be combined to filter the results The
value of the filters an be a single value or a vector of values

#### Usage

    Samples$getAll(
      commonCropNames = NULL,
      germplasmDbIds = NULL,
      germplasmNames = NULL,
      programDbIds = NULL,
      programNames = NULL,
      studyDbIds = NULL,
      studyNames = NULL,
      trialDbIds = NULL,
      trialNames = NULL,
      observationUnitDbIds = NULL,
      plateDbIds = NULL,
      plateNames = NULL,
      sampleDbIds = NULL,
      sampleNames = NULL,
      sampleGroupDbIds = NULL,
      page = 0,
      pageSize = 1000
    )

#### Arguments

- `commonCropNames`:

  The BrAPI Common Crop Name is the simple, generalized, widely accepted
  name of the organism being researched.

- `germplasmDbIds`:

  List of IDs which uniquely identify germplasm to search for

- `germplasmNames`:

  List of human readable names to identify germplasm to search for

- `programDbIds`:

  A BrAPI Program represents the high level organization or group who is
  responsible for conducting trials and studies.

- `programNames`:

  Use this parameter to only return results associated with the given
  program names.

- `studyDbIds`:

  List of study identifiers to search for

- `studyNames`:

  List of study names to filter search results

- `trialDbIds`:

  The ID which uniquely identifies a trial to search for

- `trialNames`:

  The human readable name of a trial to search for

- `observationUnitDbIds`:

  The ID which uniquely identifies an `ObservationUnit`

- `plateDbIds`:

  The ID which uniquely identifies a `Plate` of `Samples`

- `plateNames`:

  The human readable name of a `Plate` of `Samples`

- `sampleDbIds`:

  The ID which uniquely identifies a `Sample`

- `sampleNames`:

  The human readable name of the `Sample`

- `sampleGroupDbIds`:

  The unique identifier for a group of related `Samples`

- `page`:

  The page number of results to return, starting from 0

- `pageSize`:

  The maximum number of results to return per page

#### Returns

returns a paged and filtered list of Sample objects.

------------------------------------------------------------------------

### Method [`search()`](https://rdrr.io/r/base/search.html)

Searches for Sample objects on the BrAPI server. The server may return
the paged results or a search result ID for later retrieval

#### Usage

    Samples$search(
      commonCropNames = NULL,
      germplasmDbIds = NULL,
      germplasmNames = NULL,
      programDbIds = NULL,
      programNames = NULL,
      studyDbIds = NULL,
      studyNames = NULL,
      trialDbIds = NULL,
      trialNames = NULL,
      observationUnitDbIds = NULL,
      plateDbIds = NULL,
      plateNames = NULL,
      sampleDbIds = NULL,
      sampleNames = NULL,
      sampleGroupDbIds = NULL,
      page = 0,
      pageSize = 1000
    )

#### Arguments

- `commonCropNames`:

  The BrAPI Common Crop Name is the simple, generalized, widely accepted
  name of the organism being researched.

- `germplasmDbIds`:

  List of IDs which uniquely identify germplasm to search for

- `germplasmNames`:

  List of human readable names to identify germplasm to search for

- `programDbIds`:

  A BrAPI Program represents the high level organization or group who is
  responsible for conducting trials and studies.

- `programNames`:

  Use this parameter to only return results associated with the given
  program names.

- `studyDbIds`:

  List of study identifiers to search for

- `studyNames`:

  List of study names to filter search results

- `trialDbIds`:

  The ID which uniquely identifies a trial to search for

- `trialNames`:

  The human readable name of a trial to search for

- `observationUnitDbIds`:

  The ID which uniquely identifies an `ObservationUnit`

- `plateDbIds`:

  The ID which uniquely identifies a `Plate` of `Samples`

- `plateNames`:

  The human readable name of a `Plate` of `Samples`

- `sampleDbIds`:

  The ID which uniquely identifies a `Sample`

- `sampleNames`:

  The human readable name of the `Sample`

- `sampleGroupDbIds`:

  The unique identifier for a group of related `Samples` using the
  searchResult function

- `page`:

  The page number of results to return, starting from 0

- `pageSize`:

  The maximum number of results to return per page

#### Returns

returns the search result or an ID to the results.

Get the result of a search for Sample objects on the BrAPI server. If
the server returned search result ID for later retrieval, use this
function to get the results.

------------------------------------------------------------------------

### Method `searchResult()`

#### Usage

    Samples$searchResult(searchResultId, page = 0, pageSize = 1000)

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

Creates a Sample object on the BrAPI server.

#### Usage

    Samples$create(newValue)

#### Arguments

- `newValue`:

  The new Sample object to be created

------------------------------------------------------------------------

### Method [`update()`](https://rdrr.io/r/stats/update.html)

Creates a Sample object on the BrAPI server.

#### Usage

    Samples$update(value)

#### Arguments

- `value`:

  The updated Sample object to be sent to the server

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    Samples$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Examples

``` r
Samples$new()
#> Error in initialize(...): argument "client" is missing, with no default
```
