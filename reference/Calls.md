# Calls Class

The Calls class handles calling the BraAPI server and is a wrapper class
around httr2 functionality for the Call entity

## Details

The Calls class handles calling the BraAPI server and is a wrapper class
around httr2 functionality for the Call entity

## See also

Other generated: [`AlleleMatrix`](AlleleMatrix.md),
[`BrAPIClient`](BrAPIClient.md),
[`BreedingMethods`](BreedingMethods.md), [`CallSets`](CallSets.md),
[`Crosses`](Crosses.md), [`CrossingProjects`](CrossingProjects.md),
[`Events`](Events.md), [`GenomeMaps`](GenomeMaps.md),
[`Germplasm`](Germplasm.md),
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
[`VariantSets`](VariantSets.md), [`Variants`](Variants.md)

## Methods

### Public methods

- [`Calls$new()`](#method-Calls-new)

- [`Calls$getAll()`](#method-Calls-getAll)

- [`Calls$search()`](#method-Calls-search)

- [`Calls$searchResult()`](#method-Calls-searchResult)

- [`Calls$clone()`](#method-Calls-clone)

------------------------------------------------------------------------

### Method `new()`

Creates a new instance of this
[R6](https://r6.r-lib.org/reference/R6Class.html) class. It is not
recommended that this object is created separately from the BrAPIClient

#### Usage

    Calls$new(client)

#### Arguments

- `client`:

  THe BrAPIClient to be used for server communication

------------------------------------------------------------------------

### Method `getAll()`

Gets a list Call objects from the BrAPI server Note the filtering
arguments are all optional and can be combined to filter the results The
value of the filters an be a single value or a vector of values

#### Usage

    Calls$getAll(
      callSetDbIds = NULL,
      variantDbIds = NULL,
      variantSetDbIds = NULL,
      expandHomozygotes = NULL,
      sepPhased = NULL,
      sepUnphased = NULL,
      unknownString = NULL,
      page = 0,
      pageSize = 1000
    )

#### Arguments

- `callSetDbIds`:

  A list of IDs which uniquely identify `CallSets` within the given
  database server

- `variantDbIds`:

  A list of IDs which uniquely identify `Variant` within the given
  database server

- `variantSetDbIds`:

  A list of IDs which uniquely identify `VariantSets` within the given
  database server

- `expandHomozygotes`:

  Should homozygotes be expanded (true) or collapsed into a single
  occurrence (false)

- `sepPhased`:

  The string used as a separator for phased allele calls.

- `sepUnphased`:

  The string used as a separator for unphased allele calls.

- `unknownString`:

  The string used as a representation for missing data.

- `page`:

  The page number of results to return, starting from 0

- `pageSize`:

  The maximum number of results to return per page

#### Returns

returns a paged and filtered list of Call objects.

------------------------------------------------------------------------

### Method [`search()`](https://rdrr.io/r/base/search.html)

Searches for Call objects on the BrAPI server. The server may return the
paged results or a search result ID for later retrieval

#### Usage

    Calls$search(
      callSetDbIds = NULL,
      variantDbIds = NULL,
      variantSetDbIds = NULL,
      expandHomozygotes = NULL,
      sepPhased = NULL,
      sepUnphased = NULL,
      unknownString = NULL,
      page = 0,
      pageSize = 1000
    )

#### Arguments

- `callSetDbIds`:

  A list of IDs which uniquely identify `CallSets` within the given
  database server

- `variantDbIds`:

  A list of IDs which uniquely identify `Variant` within the given
  database server

- `variantSetDbIds`:

  A list of IDs which uniquely identify `VariantSets` within the given
  database server

- `expandHomozygotes`:

  Should homozygotes be expanded (true) or collapsed into a single
  occurrence (false)

- `sepPhased`:

  The string used as a separator for phased allele calls.

- `sepUnphased`:

  The string used as a separator for unphased allele calls.

- `unknownString`:

  The string used as a representation for missing data. using the
  searchResult function

- `page`:

  The page number of results to return, starting from 0

- `pageSize`:

  The maximum number of results to return per page

#### Returns

returns the search result or an ID to the results.

Get the result of a search for Call objects on the BrAPI server. If the
server returned search result ID for later retrieval, use this function
to get the results.

------------------------------------------------------------------------

### Method `searchResult()`

#### Usage

    Calls$searchResult(searchResultId, page = 0, pageSize = 1000)

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

    Calls$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
