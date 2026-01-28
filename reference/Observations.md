# Observations Class

The Observations class handles calling the BraAPI server and is a
wrapper class around httr2 functionality for the Observation entity

## Details

The Observations class handles calling the BraAPI server and is a
wrapper class around httr2 functionality for the Observation entity

## See also

Other generated: [`AlleleMatrix`](AlleleMatrix.md),
[`BrAPIClient`](BrAPIClient.md),
[`BreedingMethods`](BreedingMethods.md), [`CallSets`](CallSets.md),
[`Calls`](Calls.md), [`Crosses`](Crosses.md),
[`CrossingProjects`](CrossingProjects.md), [`Events`](Events.md),
[`GenomeMaps`](GenomeMaps.md), [`Germplasm`](Germplasm.md),
[`GermplasmAttributeValues`](GermplasmAttributeValues.md),
[`GermplasmAttributes`](GermplasmAttributes.md), [`Images`](Images.md),
[`Lists`](Lists.md), [`Locations`](Locations.md),
[`MarkerPositions`](MarkerPositions.md), [`Methods`](Methods.md),
[`ObservationUnits`](ObservationUnits.md),
[`ObservationVariables`](ObservationVariables.md),
[`Ontologies`](Ontologies.md), [`PedigreeNodes`](PedigreeNodes.md),
[`People`](People.md), [`PlannedCrosses`](PlannedCrosses.md),
[`Plates`](Plates.md), [`Programs`](Programs.md),
[`ReferenceSets`](ReferenceSets.md), [`References`](References.md),
[`Samples`](Samples.md), [`Scales`](Scales.md), [`Seasons`](Seasons.md),
[`SeedLots`](SeedLots.md), [`Studies`](Studies.md),
[`Traits`](Traits.md), [`Trials`](Trials.md),
[`VariantSets`](VariantSets.md), [`Variants`](Variants.md)

## Methods

### Public methods

- [`Observations$new()`](#method-Observations-new)

- [`Observations$get()`](#method-Observations-get)

- [`Observations$getAll()`](#method-Observations-getAll)

- [`Observations$search()`](#method-Observations-search)

- [`Observations$searchResult()`](#method-Observations-searchResult)

- [`Observations$create()`](#method-Observations-create)

- [`Observations$update()`](#method-Observations-update)

- [`Observations$clone()`](#method-Observations-clone)

------------------------------------------------------------------------

### Method `new()`

Creates a new instance of this
[R6](https://r6.r-lib.org/reference/R6Class.html) class. It is not
recommended that this object is created separately from the BrAPIClient

#### Usage

    Observations$new(client)

#### Arguments

- `client`:

  THe BrAPIClient to be used for server communication

------------------------------------------------------------------------

### Method [`get()`](https://rdrr.io/r/base/get.html)

Gets a Observation object by DbId from the BrAPI server

#### Usage

    Observations$get(id)

#### Arguments

- `id`:

  The DbIid of the Observation to be returned

#### Returns

returns a Observation object by ID.

------------------------------------------------------------------------

### Method `getAll()`

Gets a list Observation objects from the BrAPI server Note the filtering
arguments are all optional and can be combined to filter the results The
value of the filters an be a single value or a vector of values

#### Usage

    Observations$getAll(
      commonCropNames = NULL,
      germplasmDbIds = NULL,
      germplasmNames = NULL,
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
      observationDbIds = NULL,
      observationUnitDbIds = NULL,
      observationLevels = NULL,
      observationLevelRelationships = NULL,
      observationTimeStampRangeEnd = NULL,
      observationTimeStampRangeStart = NULL,
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

- `observationDbIds`:

  The unique id of an Observation

- `observationUnitDbIds`:

  The unique id of an Observation Unit

- `observationLevels`:

  Searches for values in
  ObservationUnit-\>observationUnitPosition-\>observationLevel

- `observationLevelRelationships`:

  Searches for values in
  ObservationUnit-\>observationUnitPosition-\>observationLevelRelationships

- `observationTimeStampRangeEnd`:

  Timestamp range end

- `observationTimeStampRangeStart`:

  Timestamp range start

- `seasonDbIds`:

  The year or Phenotyping campaign of a multi-annual study (trees,
  grape, .

- `page`:

  The page number of results to return, starting from 0

- `pageSize`:

  The maximum number of results to return per page

#### Returns

returns a paged and filtered list of Observation objects.

------------------------------------------------------------------------

### Method [`search()`](https://rdrr.io/r/base/search.html)

Searches for Observation objects on the BrAPI server. The server may
return the paged results or a search result ID for later retrieval

#### Usage

    Observations$search(
      commonCropNames = NULL,
      germplasmDbIds = NULL,
      germplasmNames = NULL,
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
      observationDbIds = NULL,
      observationUnitDbIds = NULL,
      observationLevels = NULL,
      observationLevelRelationships = NULL,
      observationTimeStampRangeEnd = NULL,
      observationTimeStampRangeStart = NULL,
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

- `observationDbIds`:

  The unique id of an Observation

- `observationUnitDbIds`:

  The unique id of an Observation Unit

- `observationLevels`:

  Searches for values in
  ObservationUnit-\>observationUnitPosition-\>observationLevel

- `observationLevelRelationships`:

  Searches for values in
  ObservationUnit-\>observationUnitPosition-\>observationLevelRelationships

- `observationTimeStampRangeEnd`:

  Timestamp range end

- `observationTimeStampRangeStart`:

  Timestamp range start

- `seasonDbIds`:

  The year or Phenotyping campaign of a multi-annual study (trees,
  grape, . using the searchResult function

- `page`:

  The page number of results to return, starting from 0

- `pageSize`:

  The maximum number of results to return per page

#### Returns

returns the search result or an ID to the results.

Get the result of a search for Observation objects on the BrAPI server.
If the server returned search result ID for later retrieval, use this
function to get the results.

------------------------------------------------------------------------

### Method `searchResult()`

#### Usage

    Observations$searchResult(searchResultId, page = 0, pageSize = 1000)

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

Creates a Observation object on the BrAPI server.

#### Usage

    Observations$create(newValue)

#### Arguments

- `newValue`:

  The new Observation object to be created

------------------------------------------------------------------------

### Method [`update()`](https://rdrr.io/r/stats/update.html)

Creates a Observation object on the BrAPI server.

#### Usage

    Observations$update(value)

#### Arguments

- `value`:

  The updated Observation object to be sent to the server

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    Observations$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
