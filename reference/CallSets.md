# CallSets Class

The CallSets class handles calling the BraAPI server and is a wrapper
class around httr2 functionality for the CallSet entity

## Details

The CallSets class handles calling the BraAPI server and is a wrapper
class around httr2 functionality for the CallSet entity

## Methods

### Public methods

- [`CallSets$new()`](#method-CallSets-new)

- [`CallSets$get()`](#method-CallSets-get)

- [`CallSets$getAll()`](#method-CallSets-getAll)

- [`CallSets$search()`](#method-CallSets-search)

- [`CallSets$searchResult()`](#method-CallSets-searchResult)

- [`CallSets$clone()`](#method-CallSets-clone)

------------------------------------------------------------------------

### Method `new()`

Creates a new instance of this
[R6](https://r6.r-lib.org/reference/R6Class.html) class. It is not
recommended that this object is created separately from the BrAPIClient

#### Usage

    CallSets$new(client)

#### Arguments

- `client`:

  THe BrAPIClient to be used for server communication

------------------------------------------------------------------------

### Method [`get()`](https://rdrr.io/r/base/get.html)

Gets a CallSet object by DbId from the BrAPI server

#### Usage

    CallSets$get(id)

#### Arguments

- `id`:

  The DbIid of the CallSet to be returned

#### Returns

returns a CallSet object by ID.

------------------------------------------------------------------------

### Method `getAll()`

Gets a list CallSet objects from the BrAPI server Note the filtering
arguments are all optional and can be combined to filter the results The
value of the filters an be a single value or a vector of values

#### Usage

    CallSets$getAll(
      commonCropNames = NULL,
      germplasmDbIds = NULL,
      germplasmNames = NULL,
      programDbIds = NULL,
      programNames = NULL,
      studyDbIds = NULL,
      studyNames = NULL,
      trialDbIds = NULL,
      trialNames = NULL,
      sampleDbIds = NULL,
      sampleNames = NULL,
      callSetDbIds = NULL,
      callSetNames = NULL,
      variantSetDbIds = NULL,
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

- `sampleDbIds`:

  A list of IDs which uniquely identify `Samples` within the given
  database server

- `sampleNames`:

  A list of human readable names associated with `Samples`

- `callSetDbIds`:

  A list of IDs which uniquely identify `CallSets` within the given
  database server

- `callSetNames`:

  A list of human readable names associated with `CallSets`

- `variantSetDbIds`:

  A list of IDs which uniquely identify `VariantSets` within the given
  database server

- `page`:

  The page number of results to return, starting from 0

- `pageSize`:

  The maximum number of results to return per page

#### Returns

returns a paged and filtered list of CallSet objects.

------------------------------------------------------------------------

### Method [`search()`](https://rdrr.io/r/base/search.html)

Searches for CallSet objects on the BrAPI server. The server may return
the paged results or a search result ID for later retrieval

#### Usage

    CallSets$search(
      commonCropNames = NULL,
      germplasmDbIds = NULL,
      germplasmNames = NULL,
      programDbIds = NULL,
      programNames = NULL,
      studyDbIds = NULL,
      studyNames = NULL,
      trialDbIds = NULL,
      trialNames = NULL,
      sampleDbIds = NULL,
      sampleNames = NULL,
      callSetDbIds = NULL,
      callSetNames = NULL,
      variantSetDbIds = NULL,
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

- `sampleDbIds`:

  A list of IDs which uniquely identify `Samples` within the given
  database server

- `sampleNames`:

  A list of human readable names associated with `Samples`

- `callSetDbIds`:

  A list of IDs which uniquely identify `CallSets` within the given
  database server

- `callSetNames`:

  A list of human readable names associated with `CallSets`

- `variantSetDbIds`:

  A list of IDs which uniquely identify `VariantSets` within the given
  database server using the searchResult function

- `page`:

  The page number of results to return, starting from 0

- `pageSize`:

  The maximum number of results to return per page

#### Returns

returns the search result or an ID to the results.

Get the result of a search for CallSet objects on the BrAPI server. If
the server returned search result ID for later retrieval, use this
function to get the results.

------------------------------------------------------------------------

### Method `searchResult()`

#### Usage

    CallSets$searchResult(searchResultId, page = 0, pageSize = 1000)

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

    CallSets$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Examples

``` r
CallSets$new()
#> Error in initialize(...): argument "client" is missing, with no default
```
