# Trials Class

The Trials class handles calling the BraAPI server and is a wrapper
class around httr2 functionality for the Trial entity

## Details

The Trials class handles calling the BraAPI server and is a wrapper
class around httr2 functionality for the Trial entity

## Methods

### Public methods

- [`Trials$new()`](#method-Trials-new)

- [`Trials$get()`](#method-Trials-get)

- [`Trials$getAll()`](#method-Trials-getAll)

- [`Trials$search()`](#method-Trials-search)

- [`Trials$searchResult()`](#method-Trials-searchResult)

- [`Trials$create()`](#method-Trials-create)

- [`Trials$update()`](#method-Trials-update)

- [`Trials$clone()`](#method-Trials-clone)

------------------------------------------------------------------------

### Method `new()`

Creates a new instance of this
[R6](https://r6.r-lib.org/reference/R6Class.html) class. It is not
recommended that this object is created separately from the BrAPIClient

#### Usage

    Trials$new(client)

#### Arguments

- `client`:

  THe BrAPIClient to be used for server communication

------------------------------------------------------------------------

### Method [`get()`](https://rdrr.io/r/base/get.html)

Gets a Trial object by DbId from the BrAPI server

#### Usage

    Trials$get(id)

#### Arguments

- `id`:

  The DbIid of the Trial to be returned

#### Returns

returns a Trial object by ID.

------------------------------------------------------------------------

### Method `getAll()`

Gets a list Trial objects from the BrAPI server Note the filtering
arguments are all optional and can be combined to filter the results The
value of the filters an be a single value or a vector of values

#### Usage

    Trials$getAll(
      commonCropNames = NULL,
      locationDbIds = NULL,
      locationNames = NULL,
      observationVariableDbIds = NULL,
      observationVariableNames = NULL,
      observationVariablePUIs = NULL,
      programDbIds = NULL,
      programNames = NULL,
      studyDbIds = NULL,
      studyNames = NULL,
      trialDbIds = NULL,
      trialNames = NULL,
      active = NULL,
      contactDbIds = NULL,
      searchDateRangeStart = NULL,
      searchDateRangeEnd = NULL,
      trialPUIs = NULL,
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

- `observationVariableDbIds`:

  The DbIds of Variables to search for

- `observationVariableNames`:

  The names of Variables to search for

- `observationVariablePUIs`:

  The Permanent Unique Identifier of an Observation Variable, usually in
  the form of a URI

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

- `active`:

  A flag to indicate if a Trial is currently active and ongoing

- `contactDbIds`:

  List of contact entities associated with this trial

- `searchDateRangeStart`:

  The start of the overlapping search date range.

- `searchDateRangeEnd`:

  The end of the overlapping search date range.

- `trialPUIs`:

  A permanent identifier for a trial.

- `page`:

  The page number of results to return, starting from 0

- `pageSize`:

  The maximum number of results to return per page

#### Returns

returns a paged and filtered list of Trial objects.

------------------------------------------------------------------------

### Method [`search()`](https://rdrr.io/r/base/search.html)

Searches for Trial objects on the BrAPI server. The server may return
the paged results or a search result ID for later retrieval

#### Usage

    Trials$search(
      commonCropNames = NULL,
      locationDbIds = NULL,
      locationNames = NULL,
      observationVariableDbIds = NULL,
      observationVariableNames = NULL,
      observationVariablePUIs = NULL,
      programDbIds = NULL,
      programNames = NULL,
      studyDbIds = NULL,
      studyNames = NULL,
      trialDbIds = NULL,
      trialNames = NULL,
      active = NULL,
      contactDbIds = NULL,
      searchDateRangeStart = NULL,
      searchDateRangeEnd = NULL,
      trialPUIs = NULL,
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

- `observationVariableDbIds`:

  The DbIds of Variables to search for

- `observationVariableNames`:

  The names of Variables to search for

- `observationVariablePUIs`:

  The Permanent Unique Identifier of an Observation Variable, usually in
  the form of a URI

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

- `active`:

  A flag to indicate if a Trial is currently active and ongoing

- `contactDbIds`:

  List of contact entities associated with this trial

- `searchDateRangeStart`:

  The start of the overlapping search date range.

- `searchDateRangeEnd`:

  The end of the overlapping search date range.

- `trialPUIs`:

  A permanent identifier for a trial. using the searchResult function

- `page`:

  The page number of results to return, starting from 0

- `pageSize`:

  The maximum number of results to return per page

#### Returns

returns the search result or an ID to the results.

Get the result of a search for Trial objects on the BrAPI server. If the
server returned search result ID for later retrieval, use this function
to get the results.

------------------------------------------------------------------------

### Method `searchResult()`

#### Usage

    Trials$searchResult(searchResultId, page = 0, pageSize = 1000)

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

Creates a Trial object on the BrAPI server.

#### Usage

    Trials$create(newValue)

#### Arguments

- `newValue`:

  The new Trial object to be created

------------------------------------------------------------------------

### Method [`update()`](https://rdrr.io/r/stats/update.html)

Creates a Trial object on the BrAPI server.

#### Usage

    Trials$update(value)

#### Arguments

- `value`:

  The updated Trial object to be sent to the server

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    Trials$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Examples

``` r
Trials$new()
#> Error in initialize(...): argument "client" is missing, with no default
```
