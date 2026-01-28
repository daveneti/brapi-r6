# Variants Class

The Variants class handles calling the BraAPI server and is a wrapper
class around httr2 functionality for the Variant entity

## Details

The Variants class handles calling the BraAPI server and is a wrapper
class around httr2 functionality for the Variant entity

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
[`Programs`](Programs.md), [`ReferenceSets`](ReferenceSets.md),
[`References`](References.md), [`Samples`](Samples.md),
[`Scales`](Scales.md), [`Seasons`](Seasons.md),
[`SeedLots`](SeedLots.md), [`Studies`](Studies.md),
[`Traits`](Traits.md), [`Trials`](Trials.md),
[`VariantSets`](VariantSets.md)

## Methods

### Public methods

- [`Variants$new()`](#method-Variants-new)

- [`Variants$get()`](#method-Variants-get)

- [`Variants$getAll()`](#method-Variants-getAll)

- [`Variants$search()`](#method-Variants-search)

- [`Variants$searchResult()`](#method-Variants-searchResult)

- [`Variants$clone()`](#method-Variants-clone)

------------------------------------------------------------------------

### Method `new()`

Creates a new instance of this
[R6](https://r6.r-lib.org/reference/R6Class.html) class. It is not
recommended that this object is created separately from the BrAPIClient

#### Usage

    Variants$new(client)

#### Arguments

- `client`:

  THe BrAPIClient to be used for server communication

------------------------------------------------------------------------

### Method [`get()`](https://rdrr.io/r/base/get.html)

Gets a Variant object by DbId from the BrAPI server

#### Usage

    Variants$get(id)

#### Arguments

- `id`:

  The DbIid of the Variant to be returned

#### Returns

returns a Variant object by ID.

------------------------------------------------------------------------

### Method `getAll()`

Gets a list Variant objects from the BrAPI server Note the filtering
arguments are all optional and can be combined to filter the results The
value of the filters an be a single value or a vector of values

#### Usage

    Variants$getAll(
      commonCropNames = NULL,
      programDbIds = NULL,
      programNames = NULL,
      studyDbIds = NULL,
      studyNames = NULL,
      trialDbIds = NULL,
      trialNames = NULL,
      callSetDbIds = NULL,
      end = NULL,
      referenceDbId = NULL,
      referenceDbIds = NULL,
      referenceSetDbIds = NULL,
      start = NULL,
      variantDbIds = NULL,
      variantSetDbIds = NULL,
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

- `studyDbIds`:

  List of study identifiers to search for

- `studyNames`:

  List of study names to filter search results

- `trialDbIds`:

  The ID which uniquely identifies a trial to search for

- `trialNames`:

  The human readable name of a trial to search for

- `callSetDbIds`:

  \*\*Deprecated in v2.

- `end`:

  The end of the window (0-based, exclusive) for which overlapping
  variants should be returned.

- `referenceDbId`:

  \*\*Deprecated in v2.

- `referenceDbIds`:

  The unique identifier representing a genotype `Reference`

- `referenceSetDbIds`:

  The unique identifier representing a genotype `ReferenceSet`

- `start`:

  The beginning of the window (0-based, inclusive) for which overlapping
  variants should be returned.

- `variantDbIds`:

  A list of IDs which uniquely identify `Variants`

- `variantSetDbIds`:

  A list of IDs which uniquely identify `VariantSets`

- `page`:

  The page number of results to return, starting from 0

- `pageSize`:

  The maximum number of results to return per page

#### Returns

returns a paged and filtered list of Variant objects.

------------------------------------------------------------------------

### Method [`search()`](https://rdrr.io/r/base/search.html)

Searches for Variant objects on the BrAPI server. The server may return
the paged results or a search result ID for later retrieval

#### Usage

    Variants$search(
      commonCropNames = NULL,
      programDbIds = NULL,
      programNames = NULL,
      studyDbIds = NULL,
      studyNames = NULL,
      trialDbIds = NULL,
      trialNames = NULL,
      callSetDbIds = NULL,
      end = NULL,
      referenceDbId = NULL,
      referenceDbIds = NULL,
      referenceSetDbIds = NULL,
      start = NULL,
      variantDbIds = NULL,
      variantSetDbIds = NULL,
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

- `studyDbIds`:

  List of study identifiers to search for

- `studyNames`:

  List of study names to filter search results

- `trialDbIds`:

  The ID which uniquely identifies a trial to search for

- `trialNames`:

  The human readable name of a trial to search for

- `callSetDbIds`:

  \*\*Deprecated in v2.

- `end`:

  The end of the window (0-based, exclusive) for which overlapping
  variants should be returned.

- `referenceDbId`:

  \*\*Deprecated in v2.

- `referenceDbIds`:

  The unique identifier representing a genotype `Reference`

- `referenceSetDbIds`:

  The unique identifier representing a genotype `ReferenceSet`

- `start`:

  The beginning of the window (0-based, inclusive) for which overlapping
  variants should be returned.

- `variantDbIds`:

  A list of IDs which uniquely identify `Variants`

- `variantSetDbIds`:

  A list of IDs which uniquely identify `VariantSets` using the
  searchResult function

- `page`:

  The page number of results to return, starting from 0

- `pageSize`:

  The maximum number of results to return per page

#### Returns

returns the search result or an ID to the results.

Get the result of a search for Variant objects on the BrAPI server. If
the server returned search result ID for later retrieval, use this
function to get the results.

------------------------------------------------------------------------

### Method `searchResult()`

#### Usage

    Variants$searchResult(searchResultId, page = 0, pageSize = 1000)

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

    Variants$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
