# Plates Class

The Plates class handles calling the BraAPI server and is a wrapper
class around httr2 functionality for the Plate entity

## Details

The Plates class handles calling the BraAPI server and is a wrapper
class around httr2 functionality for the Plate entity

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
[`PlannedCrosses`](PlannedCrosses.md), [`Programs`](Programs.md),
[`ReferenceSets`](ReferenceSets.md), [`References`](References.md),
[`Samples`](Samples.md), [`Scales`](Scales.md), [`Seasons`](Seasons.md),
[`SeedLots`](SeedLots.md), [`Studies`](Studies.md),
[`Traits`](Traits.md), [`Trials`](Trials.md),
[`VariantSets`](VariantSets.md), [`Variants`](Variants.md)

## Methods

### Public methods

- [`Plates$new()`](#method-Plates-new)

- [`Plates$get()`](#method-Plates-get)

- [`Plates$getAll()`](#method-Plates-getAll)

- [`Plates$search()`](#method-Plates-search)

- [`Plates$searchResult()`](#method-Plates-searchResult)

- [`Plates$create()`](#method-Plates-create)

- [`Plates$clone()`](#method-Plates-clone)

------------------------------------------------------------------------

### Method `new()`

Creates a new instance of this
[R6](https://r6.r-lib.org/reference/R6Class.html) class. It is not
recommended that this object is created separately from the BrAPIClient

#### Usage

    Plates$new(client)

#### Arguments

- `client`:

  THe BrAPIClient to be used for server communication

------------------------------------------------------------------------

### Method [`get()`](https://rdrr.io/r/base/get.html)

Gets a Plate object by DbId from the BrAPI server

#### Usage

    Plates$get(id)

#### Arguments

- `id`:

  The DbIid of the Plate to be returned

#### Returns

returns a Plate object by ID.

------------------------------------------------------------------------

### Method `getAll()`

Gets a list Plate objects from the BrAPI server Note the filtering
arguments are all optional and can be combined to filter the results The
value of the filters an be a single value or a vector of values

#### Usage

    Plates$getAll(
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
      plateBarcodes = NULL,
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

  The ID which uniquely identifies an observation unit

- `plateDbIds`:

  The ID which uniquely identifies a plate of samples

- `plateNames`:

  The human readable name of a plate of samples

- `plateBarcodes`:

  A unique identifier physically attached to the plate

- `sampleDbIds`:

  The ID which uniquely identifies a sample

- `sampleNames`:

  The human readable name of the sample

- `sampleGroupDbIds`:

  The unique identifier for a group of related Samples

- `page`:

  The page number of results to return, starting from 0

- `pageSize`:

  The maximum number of results to return per page

#### Returns

returns a paged and filtered list of Plate objects.

------------------------------------------------------------------------

### Method [`search()`](https://rdrr.io/r/base/search.html)

Searches for Plate objects on the BrAPI server. The server may return
the paged results or a search result ID for later retrieval

#### Usage

    Plates$search(
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
      plateBarcodes = NULL,
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

  The ID which uniquely identifies an observation unit

- `plateDbIds`:

  The ID which uniquely identifies a plate of samples

- `plateNames`:

  The human readable name of a plate of samples

- `plateBarcodes`:

  A unique identifier physically attached to the plate

- `sampleDbIds`:

  The ID which uniquely identifies a sample

- `sampleNames`:

  The human readable name of the sample

- `sampleGroupDbIds`:

  The unique identifier for a group of related Samples using the
  searchResult function

- `page`:

  The page number of results to return, starting from 0

- `pageSize`:

  The maximum number of results to return per page

#### Returns

returns the search result or an ID to the results.

Get the result of a search for Plate objects on the BrAPI server. If the
server returned search result ID for later retrieval, use this function
to get the results.

------------------------------------------------------------------------

### Method `searchResult()`

#### Usage

    Plates$searchResult(searchResultId, page = 0, pageSize = 1000)

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

Creates a Plate object on the BrAPI server.

#### Usage

    Plates$create(newValue)

#### Arguments

- `newValue`:

  The new Plate object to be created

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    Plates$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
