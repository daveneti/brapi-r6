# Seasons Class

The Seasons class handles calling the BraAPI server and is a wrapper
class around httr2 functionality for the Season entity

## Details

The Seasons class handles calling the BraAPI server and is a wrapper
class around httr2 functionality for the Season entity

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
[`Scales`](Scales.md), [`SeedLots`](SeedLots.md),
[`Studies`](Studies.md), [`Traits`](Traits.md), [`Trials`](Trials.md),
[`VariantSets`](VariantSets.md), [`Variants`](Variants.md)

## Methods

### Public methods

- [`Seasons$new()`](#method-Seasons-new)

- [`Seasons$get()`](#method-Seasons-get)

- [`Seasons$getAll()`](#method-Seasons-getAll)

- [`Seasons$create()`](#method-Seasons-create)

- [`Seasons$update()`](#method-Seasons-update)

- [`Seasons$clone()`](#method-Seasons-clone)

------------------------------------------------------------------------

### Method `new()`

Creates a new instance of this
[R6](https://r6.r-lib.org/reference/R6Class.html) class. It is not
recommended that this object is created separately from the BrAPIClient

#### Usage

    Seasons$new(client)

#### Arguments

- `client`:

  THe BrAPIClient to be used for server communication

------------------------------------------------------------------------

### Method [`get()`](https://rdrr.io/r/base/get.html)

Gets a Season object by DbId from the BrAPI server

#### Usage

    Seasons$get(id)

#### Arguments

- `id`:

  The DbIid of the Season to be returned

#### Returns

returns a Season object by ID.

------------------------------------------------------------------------

### Method `getAll()`

Gets a list Season objects from the BrAPI server Note the filtering
arguments are all optional and can be combined to filter the results The
value of the filters an be a single value or a vector of values

#### Usage

    Seasons$getAll(
      seasonDbIds = NULL,
      seasons = NULL,
      seasonNames = NULL,
      years = NULL,
      page = 0,
      pageSize = 1000
    )

#### Arguments

- `seasonDbIds`:

  The unique identifier for a season.

- `seasons`:

  The term to describe a given season.

- `seasonNames`:

  The term to describe a given season.

- `years`:

  The 4 digit year of a season.

- `page`:

  The page number of results to return, starting from 0

- `pageSize`:

  The maximum number of results to return per page

#### Returns

returns a paged and filtered list of Season objects.

------------------------------------------------------------------------

### Method `create()`

Creates a Season object on the BrAPI server.

#### Usage

    Seasons$create(newValue)

#### Arguments

- `newValue`:

  The new Season object to be created

------------------------------------------------------------------------

### Method [`update()`](https://rdrr.io/r/stats/update.html)

Creates a Season object on the BrAPI server.

#### Usage

    Seasons$update(value)

#### Arguments

- `value`:

  The updated Season object to be sent to the server

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    Seasons$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
