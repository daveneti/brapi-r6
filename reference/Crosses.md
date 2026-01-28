# Crosses Class

The Crosses class handles calling the BraAPI server and is a wrapper
class around httr2 functionality for the Cross entity

## Details

The Crosses class handles calling the BraAPI server and is a wrapper
class around httr2 functionality for the Cross entity

## See also

Other generated: [`AlleleMatrix`](AlleleMatrix.md),
[`BrAPIClient`](BrAPIClient.md),
[`BreedingMethods`](BreedingMethods.md), [`CallSets`](CallSets.md),
[`Calls`](Calls.md), [`CrossingProjects`](CrossingProjects.md),
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

- [`Crosses$new()`](#method-Crosses-new)

- [`Crosses$getAll()`](#method-Crosses-getAll)

- [`Crosses$create()`](#method-Crosses-create)

- [`Crosses$update()`](#method-Crosses-update)

- [`Crosses$clone()`](#method-Crosses-clone)

------------------------------------------------------------------------

### Method `new()`

Creates a new instance of this
[R6](https://r6.r-lib.org/reference/R6Class.html) class. It is not
recommended that this object is created separately from the BrAPIClient

#### Usage

    Crosses$new(client)

#### Arguments

- `client`:

  THe BrAPIClient to be used for server communication

------------------------------------------------------------------------

### Method `getAll()`

Gets a list Cross objects from the BrAPI server Note the filtering
arguments are all optional and can be combined to filter the results The
value of the filters an be a single value or a vector of values

#### Usage

    Crosses$getAll(
      commonCropNames = NULL,
      programDbIds = NULL,
      programNames = NULL,
      crossingProjectDbIds = NULL,
      crossingProjectNames = NULL,
      crossDbIds = NULL,
      crossNames = NULL,
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

- `crossDbIds`:

  Search for Cross with this unique id

- `crossNames`:

  Search for Cross with this human readable name

- `page`:

  The page number of results to return, starting from 0

- `pageSize`:

  The maximum number of results to return per page

#### Returns

returns a paged and filtered list of Cross objects.

------------------------------------------------------------------------

### Method `create()`

Creates a Cross object on the BrAPI server.

#### Usage

    Crosses$create(newValue)

#### Arguments

- `newValue`:

  The new Cross object to be created

------------------------------------------------------------------------

### Method [`update()`](https://rdrr.io/r/stats/update.html)

Creates a Cross object on the BrAPI server.

#### Usage

    Crosses$update(value)

#### Arguments

- `value`:

  The updated Cross object to be sent to the server

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    Crosses$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
