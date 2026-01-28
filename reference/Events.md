# Events Class

The Events class handles calling the BraAPI server and is a wrapper
class around httr2 functionality for the Event entity

## Details

The Events class handles calling the BraAPI server and is a wrapper
class around httr2 functionality for the Event entity

## See also

Other generated: [`AlleleMatrix`](AlleleMatrix.md),
[`BrAPIClient`](BrAPIClient.md),
[`BreedingMethods`](BreedingMethods.md), [`CallSets`](CallSets.md),
[`Calls`](Calls.md), [`Crosses`](Crosses.md),
[`CrossingProjects`](CrossingProjects.md),
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
[`VariantSets`](VariantSets.md), [`Variants`](Variants.md)

## Methods

### Public methods

- [`Events$new()`](#method-Events-new)

- [`Events$getAll()`](#method-Events-getAll)

- [`Events$clone()`](#method-Events-clone)

------------------------------------------------------------------------

### Method `new()`

Creates a new instance of this
[R6](https://r6.r-lib.org/reference/R6Class.html) class. It is not
recommended that this object is created separately from the BrAPIClient

#### Usage

    Events$new(client)

#### Arguments

- `client`:

  THe BrAPIClient to be used for server communication

------------------------------------------------------------------------

### Method `getAll()`

Gets a list Event objects from the BrAPI server Note the filtering
arguments are all optional and can be combined to filter the results The
value of the filters an be a single value or a vector of values

#### Usage

    Events$getAll(
      studyDbIds = NULL,
      studyNames = NULL,
      observationUnitDbIds = NULL,
      eventDbIds = NULL,
      eventTypes = NULL,
      dateRangeStart = NULL,
      dateRangeEnd = NULL,
      page = 0,
      pageSize = 1000
    )

#### Arguments

- `studyDbIds`:

  List of study identifiers to search for

- `studyNames`:

  List of study names to filter search results

- `observationUnitDbIds`:

  The ID which uniquely identifies an observation unit.

- `eventDbIds`:

  Filter based on an Event DbId.

- `eventTypes`:

  Filter based on an Event Type

- `dateRangeStart`:

  Filter based on an Event start date.

- `dateRangeEnd`:

  Filter based on an Event start date.

- `page`:

  The page number of results to return, starting from 0

- `pageSize`:

  The maximum number of results to return per page

#### Returns

returns a paged and filtered list of Event objects.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    Events$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
