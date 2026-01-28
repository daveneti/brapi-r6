# Studies Class

The Studies class handles calling the BraAPI server and is a wrapper
class around httr2 functionality for the Study entity

## Details

The Studies class handles calling the BraAPI server and is a wrapper
class around httr2 functionality for the Study entity

## Methods

### Public methods

- [`Studies$new()`](#method-Studies-new)

- [`Studies$get()`](#method-Studies-get)

- [`Studies$getAll()`](#method-Studies-getAll)

- [`Studies$search()`](#method-Studies-search)

- [`Studies$searchResult()`](#method-Studies-searchResult)

- [`Studies$create()`](#method-Studies-create)

- [`Studies$update()`](#method-Studies-update)

- [`Studies$clone()`](#method-Studies-clone)

------------------------------------------------------------------------

### Method `new()`

Creates a new instance of this
[R6](https://r6.r-lib.org/reference/R6Class.html) class. It is not
recommended that this object is created separately from the BrAPIClient

#### Usage

    Studies$new(client)

#### Arguments

- `client`:

  THe BrAPIClient to be used for server communication

------------------------------------------------------------------------

### Method [`get()`](https://rdrr.io/r/base/get.html)

Gets a Study object by DbId from the BrAPI server

#### Usage

    Studies$get(id)

#### Arguments

- `id`:

  The DbIid of the Study to be returned

#### Returns

returns a Study object by ID.

------------------------------------------------------------------------

### Method `getAll()`

Gets a list Study objects from the BrAPI server Note the filtering
arguments are all optional and can be combined to filter the results The
value of the filters an be a single value or a vector of values

#### Usage

    Studies$getAll(
      commonCropNames = NULL,
      germplasmDbIds = NULL,
      germplasmNames = NULL,
      locationDbIds = NULL,
      locationNames = NULL,
      programDbIds = NULL,
      programNames = NULL,
      studyDbIds = NULL,
      studyNames = NULL,
      trialDbIds = NULL,
      trialNames = NULL,
      observationVariableDbIds = NULL,
      observationVariableNames = NULL,
      observationVariablePUIs = NULL,
      active = NULL,
      seasonDbIds = NULL,
      studyTypes = NULL,
      studyCodes = NULL,
      studyPUIs = NULL,
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

- `studyDbIds`:

  List of study identifiers to search for

- `studyNames`:

  List of study names to filter search results

- `trialDbIds`:

  The ID which uniquely identifies a trial to search for

- `trialNames`:

  The human readable name of a trial to search for

- `observationVariableDbIds`:

  The DbIds of Variables to search for

- `observationVariableNames`:

  The names of Variables to search for

- `observationVariablePUIs`:

  The Permanent Unique Identifier of an Observation Variable, usually in
  the form of a URI

- `active`:

  A flag to indicate if a Study is currently active and ongoing

- `seasonDbIds`:

  The ID which uniquely identifies a season

- `studyTypes`:

  The type of study being performed.

- `studyCodes`:

  A short human readable code for a study

- `studyPUIs`:

  Permanent unique identifier associated with study data.

- `page`:

  The page number of results to return, starting from 0

- `pageSize`:

  The maximum number of results to return per page

#### Returns

returns a paged and filtered list of Study objects.

------------------------------------------------------------------------

### Method [`search()`](https://rdrr.io/r/base/search.html)

Searches for Study objects on the BrAPI server. The server may return
the paged results or a search result ID for later retrieval

#### Usage

    Studies$search(
      commonCropNames = NULL,
      germplasmDbIds = NULL,
      germplasmNames = NULL,
      locationDbIds = NULL,
      locationNames = NULL,
      programDbIds = NULL,
      programNames = NULL,
      studyDbIds = NULL,
      studyNames = NULL,
      trialDbIds = NULL,
      trialNames = NULL,
      observationVariableDbIds = NULL,
      observationVariableNames = NULL,
      observationVariablePUIs = NULL,
      active = NULL,
      seasonDbIds = NULL,
      studyTypes = NULL,
      studyCodes = NULL,
      studyPUIs = NULL,
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

- `studyDbIds`:

  List of study identifiers to search for

- `studyNames`:

  List of study names to filter search results

- `trialDbIds`:

  The ID which uniquely identifies a trial to search for

- `trialNames`:

  The human readable name of a trial to search for

- `observationVariableDbIds`:

  The DbIds of Variables to search for

- `observationVariableNames`:

  The names of Variables to search for

- `observationVariablePUIs`:

  The Permanent Unique Identifier of an Observation Variable, usually in
  the form of a URI

- `active`:

  A flag to indicate if a Study is currently active and ongoing

- `seasonDbIds`:

  The ID which uniquely identifies a season

- `studyTypes`:

  The type of study being performed.

- `studyCodes`:

  A short human readable code for a study

- `studyPUIs`:

  Permanent unique identifier associated with study data. using the
  searchResult function

- `page`:

  The page number of results to return, starting from 0

- `pageSize`:

  The maximum number of results to return per page

#### Returns

returns the search result or an ID to the results.

Get the result of a search for Study objects on the BrAPI server. If the
server returned search result ID for later retrieval, use this function
to get the results.

------------------------------------------------------------------------

### Method `searchResult()`

#### Usage

    Studies$searchResult(searchResultId, page = 0, pageSize = 1000)

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

Creates a Study object on the BrAPI server.

#### Usage

    Studies$create(newValue)

#### Arguments

- `newValue`:

  The new Study object to be created

------------------------------------------------------------------------

### Method [`update()`](https://rdrr.io/r/stats/update.html)

Creates a Study object on the BrAPI server.

#### Usage

    Studies$update(value)

#### Arguments

- `value`:

  The updated Study object to be sent to the server

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    Studies$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Examples

``` r
Studies$new()
#> Error in initialize(...): argument "client" is missing, with no default
```
