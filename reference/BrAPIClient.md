# BrAPIClient Class

The BrAPIClient class handles the configuration of the BrAPI connection
and is a wrapper class around httr2 functionality

## Details

The BrAPIClient class handles the configuration of the BrAPIClient
connection and is a wrapper class around httr2 functionality

## See also

Other generated: [`AlleleMatrix`](AlleleMatrix.md),
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
[`VariantSets`](VariantSets.md), [`Variants`](Variants.md)

## Super class

[`BrAPI.R6::BaseBrAPIClient`](BaseBrAPIClient.md) -\> `BrAPIClient`

## Active bindings

- `alleleMatrix`:

  Get the AlleleMatrix R6 class object which can be used to call the
  BrAPI server for AlleleMatrix entities

- `breedingMethods`:

  Get the BreedingMethods R6 class object which can be used to call the
  BrAPI server for BreedingMethod entities

- `calls`:

  Get the Calls R6 class object which can be used to call the BrAPI
  server for Call entities

- `callSets`:

  Get the CallSets R6 class object which can be used to call the BrAPI
  server for CallSet entities

- `crosses`:

  Get the Crosses R6 class object which can be used to call the BrAPI
  server for Cross entities

- `crossingProjects`:

  Get the CrossingProjects R6 class object which can be used to call the
  BrAPI server for CrossingProject entities

- `events`:

  Get the Events R6 class object which can be used to call the BrAPI
  server for Event entities

- `genomeMaps`:

  Get the GenomeMaps R6 class object which can be used to call the BrAPI
  server for GenomeMap entities

- `germplasm`:

  Get the Germplasm R6 class object which can be used to call the BrAPI
  server for Germplasm entities

- `germplasmAttributes`:

  Get the GermplasmAttributes R6 class object which can be used to call
  the BrAPI server for GermplasmAttribute entities

- `germplasmAttributeValues`:

  Get the GermplasmAttributeValues R6 class object which can be used to
  call the BrAPI server for GermplasmAttributeValue entities

- `images`:

  Get the Images R6 class object which can be used to call the BrAPI
  server for Image entities

- `lists`:

  Get the Lists R6 class object which can be used to call the BrAPI
  server for List entities

- `locations`:

  Get the Locations R6 class object which can be used to call the BrAPI
  server for Location entities

- `markerPositions`:

  Get the MarkerPositions R6 class object which can be used to call the
  BrAPI server for MarkerPosition entities

- `methods`:

  Get the Methods R6 class object which can be used to call the BrAPI
  server for Method entities

- `observations`:

  Get the Observations R6 class object which can be used to call the
  BrAPI server for Observation entities

- `observationUnits`:

  Get the ObservationUnits R6 class object which can be used to call the
  BrAPI server for ObservationUnit entities

- `observationVariables`:

  Get the ObservationVariables R6 class object which can be used to call
  the BrAPI server for ObservationVariable entities

- `ontologies`:

  Get the Ontologies R6 class object which can be used to call the BrAPI
  server for Ontology entities

- `pedigreeNodes`:

  Get the PedigreeNodes R6 class object which can be used to call the
  BrAPI server for PedigreeNode entities

- `people`:

  Get the People R6 class object which can be used to call the BrAPI
  server for Person entities

- `plannedCrosses`:

  Get the PlannedCrosses R6 class object which can be used to call the
  BrAPI server for PlannedCross entities

- `plates`:

  Get the Plates R6 class object which can be used to call the BrAPI
  server for Plate entities

- `programs`:

  Get the Programs R6 class object which can be used to call the BrAPI
  server for Program entities

- `references`:

  Get the References R6 class object which can be used to call the BrAPI
  server for Reference entities

- `referenceSets`:

  Get the ReferenceSets R6 class object which can be used to call the
  BrAPI server for ReferenceSet entities

- `samples`:

  Get the Samples R6 class object which can be used to call the BrAPI
  server for Sample entities

- `scales`:

  Get the Scales R6 class object which can be used to call the BrAPI
  server for Scale entities

- `seasons`:

  Get the Seasons R6 class object which can be used to call the BrAPI
  server for Season entities

- `seedLots`:

  Get the SeedLots R6 class object which can be used to call the BrAPI
  server for SeedLot entities

- `studies`:

  Get the Studies R6 class object which can be used to call the BrAPI
  server for Study entities

- `traits`:

  Get the Traits R6 class object which can be used to call the BrAPI
  server for Trait entities

- `trials`:

  Get the Trials R6 class object which can be used to call the BrAPI
  server for Trial entities

- `variants`:

  Get the Variants R6 class object which can be used to call the BrAPI
  server for Variant entities

- `variantSets`:

  Get the VariantSets R6 class object which can be used to call the
  BrAPI server for VariantSet entities

## Methods

### Public methods

- [`BrAPIClient$clone()`](#method-BrAPIClient-clone)

Inherited methods

- [`BrAPI.R6::BaseBrAPIClient$initialize()`](BaseBrAPIClient.html#method-initialize)
- [`BrAPI.R6::BaseBrAPIClient$perform_get_request()`](BaseBrAPIClient.html#method-perform_get_request)
- [`BrAPI.R6::BaseBrAPIClient$perform_post_request()`](BaseBrAPIClient.html#method-perform_post_request)

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    BrAPIClient$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
