# Programs Class

The Programs class handles calling the BraAPI server and is a wrapper
class around httr2 functionality for the Program entity

## Details

The Programs class handles calling the BraAPI server and is a wrapper
class around httr2 functionality for the Program entity

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
[`Observations`](Observations.md), [`Ontologies`](Ontologies.md),
[`PedigreeNodes`](PedigreeNodes.md), [`People`](People.md),
[`PlannedCrosses`](PlannedCrosses.md), [`Plates`](Plates.md),
[`ReferenceSets`](ReferenceSets.md), [`References`](References.md),
[`Samples`](Samples.md), [`Scales`](Scales.md), [`Seasons`](Seasons.md),
[`SeedLots`](SeedLots.md), [`Studies`](Studies.md),
[`Traits`](Traits.md), [`Trials`](Trials.md),
[`VariantSets`](VariantSets.md), [`Variants`](Variants.md)

## Methods

### Public methods

- [`Programs$new()`](#method-Programs-new)

- [`Programs$get()`](#method-Programs-get)

- [`Programs$getAll()`](#method-Programs-getAll)

- [`Programs$search()`](#method-Programs-search)

- [`Programs$searchResult()`](#method-Programs-searchResult)

- [`Programs$create()`](#method-Programs-create)

- [`Programs$update()`](#method-Programs-update)

- [`Programs$clone()`](#method-Programs-clone)

------------------------------------------------------------------------

### Method `new()`

Creates a new instance of this
[R6](https://r6.r-lib.org/reference/R6Class.html) class. It is not
recommended that this object is created separately from the BrAPIClient

#### Usage

    Programs$new(client)

#### Arguments

- `client`:

  THe BrAPIClient to be used for server communication

------------------------------------------------------------------------

### Method [`get()`](https://rdrr.io/r/base/get.html)

Gets a Program object by DbId from the BrAPI server

#### Usage

    Programs$get(id)

#### Arguments

- `id`:

  The DbIid of the Program to be returned

#### Returns

returns a Program object by ID.

------------------------------------------------------------------------

### Method `getAll()`

Gets a list Program objects from the BrAPI server Note the filtering
arguments are all optional and can be combined to filter the results The
value of the filters an be a single value or a vector of values

#### Usage

    Programs$getAll(
      commonCropNames = NULL,
      programDbIds = NULL,
      programNames = NULL,
      abbreviations = NULL,
      leadPersonDbIds = NULL,
      leadPersonNames = NULL,
      objectives = NULL,
      programTypes = NULL,
      page = 0,
      pageSize = 1000
    )

#### Arguments

- `commonCropNames`:

  The BrAPI Common Crop Name is the simple, generalized, widely accepted
  name of the organism being researched.

- `programDbIds`:

  A BrAPI Program represents the high level organization or group who is
  responsible for conducting trials and studies.

- `programNames`:

  Use this parameter to only return results associated with the given
  program names.

- `abbreviations`:

  A list of shortened human readable names for a set of Programs

- `leadPersonDbIds`:

  The person DbIds of the program leader to search for

- `leadPersonNames`:

  The names of the program leader to search for

- `objectives`:

  A program objective to search for

- `programTypes`:

  The type of program entity this object represents \<br/\> 'STANDARD'
  represents a standard, permanent breeding program \<br/\> 'PROJECT'
  represents a short term project, usually with a set time limit based
  on funding

- `page`:

  The page number of results to return, starting from 0

- `pageSize`:

  The maximum number of results to return per page

#### Returns

returns a paged and filtered list of Program objects.

------------------------------------------------------------------------

### Method [`search()`](https://rdrr.io/r/base/search.html)

Searches for Program objects on the BrAPI server. The server may return
the paged results or a search result ID for later retrieval

#### Usage

    Programs$search(
      commonCropNames = NULL,
      programDbIds = NULL,
      programNames = NULL,
      abbreviations = NULL,
      leadPersonDbIds = NULL,
      leadPersonNames = NULL,
      objectives = NULL,
      programTypes = NULL,
      page = 0,
      pageSize = 1000
    )

#### Arguments

- `commonCropNames`:

  The BrAPI Common Crop Name is the simple, generalized, widely accepted
  name of the organism being researched.

- `programDbIds`:

  A BrAPI Program represents the high level organization or group who is
  responsible for conducting trials and studies.

- `programNames`:

  Use this parameter to only return results associated with the given
  program names.

- `abbreviations`:

  A list of shortened human readable names for a set of Programs

- `leadPersonDbIds`:

  The person DbIds of the program leader to search for

- `leadPersonNames`:

  The names of the program leader to search for

- `objectives`:

  A program objective to search for

- `programTypes`:

  The type of program entity this object represents \<br/\> 'STANDARD'
  represents a standard, permanent breeding program \<br/\> 'PROJECT'
  represents a short term project, usually with a set time limit based
  on funding using the searchResult function

- `page`:

  The page number of results to return, starting from 0

- `pageSize`:

  The maximum number of results to return per page

#### Returns

returns the search result or an ID to the results.

Get the result of a search for Program objects on the BrAPI server. If
the server returned search result ID for later retrieval, use this
function to get the results.

------------------------------------------------------------------------

### Method `searchResult()`

#### Usage

    Programs$searchResult(searchResultId, page = 0, pageSize = 1000)

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

Creates a Program object on the BrAPI server.

#### Usage

    Programs$create(newValue)

#### Arguments

- `newValue`:

  The new Program object to be created

------------------------------------------------------------------------

### Method [`update()`](https://rdrr.io/r/stats/update.html)

Creates a Program object on the BrAPI server.

#### Usage

    Programs$update(value)

#### Arguments

- `value`:

  The updated Program object to be sent to the server

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    Programs$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
