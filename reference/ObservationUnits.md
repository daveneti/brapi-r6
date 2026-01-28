# ObservationUnits Class

The ObservationUnits class handles calling the BraAPI server and is a
wrapper class around httr2 functionality for the ObservationUnit entity

## Details

The ObservationUnits class handles calling the BraAPI server and is a
wrapper class around httr2 functionality for the ObservationUnit entity

## Methods

### Public methods

- [`ObservationUnits$new()`](#method-ObservationUnits-new)

- [`ObservationUnits$get()`](#method-ObservationUnits-get)

- [`ObservationUnits$getAll()`](#method-ObservationUnits-getAll)

- [`ObservationUnits$search()`](#method-ObservationUnits-search)

- [`ObservationUnits$searchResult()`](#method-ObservationUnits-searchResult)

- [`ObservationUnits$create()`](#method-ObservationUnits-create)

- [`ObservationUnits$update()`](#method-ObservationUnits-update)

- [`ObservationUnits$clone()`](#method-ObservationUnits-clone)

------------------------------------------------------------------------

### Method `new()`

Creates a new instance of this
[R6](https://r6.r-lib.org/reference/R6Class.html) class. It is not
recommended that this object is created separately from the BrAPIClient

#### Usage

    ObservationUnits$new(client)

#### Arguments

- `client`:

  THe BrAPIClient to be used for server communication

------------------------------------------------------------------------

### Method [`get()`](https://rdrr.io/r/base/get.html)

Gets a ObservationUnit object by DbId from the BrAPI server

#### Usage

    ObservationUnits$get(id)

#### Arguments

- `id`:

  The DbIid of the ObservationUnit to be returned

#### Returns

returns a ObservationUnit object by ID.

------------------------------------------------------------------------

### Method `getAll()`

Gets a list ObservationUnit objects from the BrAPI server Note the
filtering arguments are all optional and can be combined to filter the
results The value of the filters an be a single value or a vector of
values

#### Usage

    ObservationUnits$getAll(
      commonCropNames = NULL,
      germplasmDbIds = NULL,
      germplasmNames = NULL,
      locationDbIds = NULL,
      locationNames = NULL,
      studyDbIds = NULL,
      studyNames = NULL,
      observationVariableDbIds = NULL,
      observationVariableNames = NULL,
      observationVariablePUIs = NULL,
      programDbIds = NULL,
      programNames = NULL,
      trialDbIds = NULL,
      trialNames = NULL,
      observationUnitDbIds = NULL,
      observationUnitNames = NULL,
      observationLevels = NULL,
      observationLevelRelationships = NULL,
      includeObservations = NULL,
      seasonDbIds = NULL,
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

- `studyDbIds`:

  List of study identifiers to search for

- `studyNames`:

  List of study names to filter search results

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

- `trialDbIds`:

  The ID which uniquely identifies a trial to search for

- `trialNames`:

  The human readable name of a trial to search for

- `observationUnitDbIds`:

  The unique id of an observation unit

- `observationUnitNames`:

  The human readable identifier for an Observation Unit

- `observationLevels`:

  Searches for values in
  ObservationUnit-\>observationUnitPosition-\>observationLevel

- `observationLevelRelationships`:

  Searches for values in
  ObservationUnit-\>observationUnitPosition-\>observationLevelRelationships

- `includeObservations`:

  Use this parameter to include a list of observations embedded in each
  ObservationUnit object.

- `seasonDbIds`:

  The year or Phenotyping campaign of a multi-annual study (trees,
  grape, .

- `page`:

  The page number of results to return, starting from 0

- `pageSize`:

  The maximum number of results to return per page

#### Returns

returns a paged and filtered list of ObservationUnit objects.

------------------------------------------------------------------------

### Method [`search()`](https://rdrr.io/r/base/search.html)

Searches for ObservationUnit objects on the BrAPI server. The server may
return the paged results or a search result ID for later retrieval

#### Usage

    ObservationUnits$search(
      commonCropNames = NULL,
      germplasmDbIds = NULL,
      germplasmNames = NULL,
      locationDbIds = NULL,
      locationNames = NULL,
      studyDbIds = NULL,
      studyNames = NULL,
      observationVariableDbIds = NULL,
      observationVariableNames = NULL,
      observationVariablePUIs = NULL,
      programDbIds = NULL,
      programNames = NULL,
      trialDbIds = NULL,
      trialNames = NULL,
      observationUnitDbIds = NULL,
      observationUnitNames = NULL,
      observationLevels = NULL,
      observationLevelRelationships = NULL,
      includeObservations = NULL,
      seasonDbIds = NULL,
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

- `studyDbIds`:

  List of study identifiers to search for

- `studyNames`:

  List of study names to filter search results

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

- `trialDbIds`:

  The ID which uniquely identifies a trial to search for

- `trialNames`:

  The human readable name of a trial to search for

- `observationUnitDbIds`:

  The unique id of an observation unit

- `observationUnitNames`:

  The human readable identifier for an Observation Unit

- `observationLevels`:

  Searches for values in
  ObservationUnit-\>observationUnitPosition-\>observationLevel

- `observationLevelRelationships`:

  Searches for values in
  ObservationUnit-\>observationUnitPosition-\>observationLevelRelationships

- `includeObservations`:

  Use this parameter to include a list of observations embedded in each
  ObservationUnit object.

- `seasonDbIds`:

  The year or Phenotyping campaign of a multi-annual study (trees,
  grape, . using the searchResult function

- `page`:

  The page number of results to return, starting from 0

- `pageSize`:

  The maximum number of results to return per page

#### Returns

returns the search result or an ID to the results.

Get the result of a search for ObservationUnit objects on the BrAPI
server. If the server returned search result ID for later retrieval, use
this function to get the results.

------------------------------------------------------------------------

### Method `searchResult()`

#### Usage

    ObservationUnits$searchResult(searchResultId, page = 0, pageSize = 1000)

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

Creates a ObservationUnit object on the BrAPI server.

#### Usage

    ObservationUnits$create(newValue)

#### Arguments

- `newValue`:

  The new ObservationUnit object to be created

------------------------------------------------------------------------

### Method [`update()`](https://rdrr.io/r/stats/update.html)

Creates a ObservationUnit object on the BrAPI server.

#### Usage

    ObservationUnits$update(value)

#### Arguments

- `value`:

  The updated ObservationUnit object to be sent to the server

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    ObservationUnits$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Examples

``` r
ObservationUnits$new()
#> Error in initialize(...): argument "client" is missing, with no default
```
