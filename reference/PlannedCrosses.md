# PlannedCrosses Class

The PlannedCrosses class handles calling the BraAPI server and is a
wrapper class around httr2 functionality for the PlannedCross entity

## Details

The PlannedCrosses class handles calling the BraAPI server and is a
wrapper class around httr2 functionality for the PlannedCross entity

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
[`Plates`](Plates.md), [`Programs`](Programs.md),
[`ReferenceSets`](ReferenceSets.md), [`References`](References.md),
[`Samples`](Samples.md), [`Scales`](Scales.md), [`Seasons`](Seasons.md),
[`SeedLots`](SeedLots.md), [`Studies`](Studies.md),
[`Traits`](Traits.md), [`Trials`](Trials.md),
[`VariantSets`](VariantSets.md), [`Variants`](Variants.md)

## Methods

### Public methods

- [`PlannedCrosses$new()`](#method-PlannedCrosses-new)

- [`PlannedCrosses$getAll()`](#method-PlannedCrosses-getAll)

- [`PlannedCrosses$create()`](#method-PlannedCrosses-create)

- [`PlannedCrosses$update()`](#method-PlannedCrosses-update)

- [`PlannedCrosses$clone()`](#method-PlannedCrosses-clone)

------------------------------------------------------------------------

### Method `new()`

Creates a new instance of this
[R6](https://r6.r-lib.org/reference/R6Class.html) class. It is not
recommended that this object is created separately from the BrAPIClient

#### Usage

    PlannedCrosses$new(client)

#### Arguments

- `client`:

  THe BrAPIClient to be used for server communication

------------------------------------------------------------------------

### Method `getAll()`

Gets a list PlannedCross objects from the BrAPI server Note the
filtering arguments are all optional and can be combined to filter the
results The value of the filters an be a single value or a vector of
values

#### Usage

    PlannedCrosses$getAll(
      commonCropNames = NULL,
      programDbIds = NULL,
      programNames = NULL,
      crossingProjectDbIds = NULL,
      crossingProjectNames = NULL,
      plannedCrossDbIds = NULL,
      plannedCrossNames = NULL,
      statuses = NULL,
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

- `crossingProjectDbIds`:

  Search for Crossing Projects with this unique id

- `crossingProjectNames`:

  The human readable name for a crossing project

- `plannedCrossDbIds`:

  Search for Planned Cross with this unique id

- `plannedCrossNames`:

  Search for Planned Cross with this human readable name

- `statuses`:

  The status of this planned cross.

- `page`:

  The page number of results to return, starting from 0

- `pageSize`:

  The maximum number of results to return per page

#### Returns

returns a paged and filtered list of PlannedCross objects.

------------------------------------------------------------------------

### Method `create()`

Creates a PlannedCross object on the BrAPI server.

#### Usage

    PlannedCrosses$create(newValue)

#### Arguments

- `newValue`:

  The new PlannedCross object to be created

------------------------------------------------------------------------

### Method [`update()`](https://rdrr.io/r/stats/update.html)

Creates a PlannedCross object on the BrAPI server.

#### Usage

    PlannedCrosses$update(value)

#### Arguments

- `value`:

  The updated PlannedCross object to be sent to the server

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    PlannedCrosses$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
