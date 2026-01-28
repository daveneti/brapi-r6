# BrAPIClient Class

The BrAPIClient class handles the configuration of the BrAPI connection
and is a wrapper class around httr2 functionality

## Details

The BrAPIClient class handles the configuration of the BrAPIClient
connection and is a wrapper class around httr2 functionality

## Super class

[`BrAPI.R6::BaseBrAPIClient`](BaseBrAPIClient.md) -\> `BrAPIClient`

## Active bindings

- `alleleMatrix`:

  Get the AlleleMatrix R6 class object which can be used to call the
  BrAPI server for \[\$entityNamesiterStat.index\]\] entities

- `breedingMethods`:

  Get the BreedingMethods R6 class object which can be used to call the
  BrAPI server for \[\$entityNamesiterStat.index\]\] entities

- `calls`:

  Get the Calls R6 class object which can be used to call the BrAPI
  server for \[\$entityNamesiterStat.index\]\] entities

- `callSets`:

  Get the CallSets R6 class object which can be used to call the BrAPI
  server for \[\$entityNamesiterStat.index\]\] entities

- `crosses`:

  Get the Crosses R6 class object which can be used to call the BrAPI
  server for \[\$entityNamesiterStat.index\]\] entities

- `crossingProjects`:

  Get the CrossingProjects R6 class object which can be used to call the
  BrAPI server for \[\$entityNamesiterStat.index\]\] entities

- `events`:

  Get the Events R6 class object which can be used to call the BrAPI
  server for \[\$entityNamesiterStat.index\]\] entities

- `genomeMaps`:

  Get the GenomeMaps R6 class object which can be used to call the BrAPI
  server for \[\$entityNamesiterStat.index\]\] entities

- `germplasm`:

  Get the Germplasm R6 class object which can be used to call the BrAPI
  server for \[\$entityNamesiterStat.index\]\] entities

- `germplasmAttributes`:

  Get the GermplasmAttributes R6 class object which can be used to call
  the BrAPI server for \[\$entityNamesiterStat.index\]\] entities

- `germplasmAttributeValues`:

  Get the GermplasmAttributeValues R6 class object which can be used to
  call the BrAPI server for \[\$entityNamesiterStat.index\]\] entities

- `images`:

  Get the Images R6 class object which can be used to call the BrAPI
  server for \[\$entityNamesiterStat.index\]\] entities

- `lists`:

  Get the Lists R6 class object which can be used to call the BrAPI
  server for \[\$entityNamesiterStat.index\]\] entities

- `locations`:

  Get the Locations R6 class object which can be used to call the BrAPI
  server for \[\$entityNamesiterStat.index\]\] entities

- `markerPositions`:

  Get the MarkerPositions R6 class object which can be used to call the
  BrAPI server for \[\$entityNamesiterStat.index\]\] entities

- `methods`:

  Get the Methods R6 class object which can be used to call the BrAPI
  server for \[\$entityNamesiterStat.index\]\] entities

- `observations`:

  Get the Observations R6 class object which can be used to call the
  BrAPI server for \[\$entityNamesiterStat.index\]\] entities

- `observationUnits`:

  Get the ObservationUnits R6 class object which can be used to call the
  BrAPI server for \[\$entityNamesiterStat.index\]\] entities

- `observationVariables`:

  Get the ObservationVariables R6 class object which can be used to call
  the BrAPI server for \[\$entityNamesiterStat.index\]\] entities

- `ontologies`:

  Get the Ontologies R6 class object which can be used to call the BrAPI
  server for \[\$entityNamesiterStat.index\]\] entities

- `pedigreeNodes`:

  Get the PedigreeNodes R6 class object which can be used to call the
  BrAPI server for \[\$entityNamesiterStat.index\]\] entities

- `people`:

  Get the People R6 class object which can be used to call the BrAPI
  server for \[\$entityNamesiterStat.index\]\] entities

- `plannedCrosses`:

  Get the PlannedCrosses R6 class object which can be used to call the
  BrAPI server for \[\$entityNamesiterStat.index\]\] entities

- `plates`:

  Get the Plates R6 class object which can be used to call the BrAPI
  server for \[\$entityNamesiterStat.index\]\] entities

- `programs`:

  Get the Programs R6 class object which can be used to call the BrAPI
  server for \[\$entityNamesiterStat.index\]\] entities

- `references`:

  Get the References R6 class object which can be used to call the BrAPI
  server for \[\$entityNamesiterStat.index\]\] entities

- `referenceSets`:

  Get the ReferenceSets R6 class object which can be used to call the
  BrAPI server for \[\$entityNamesiterStat.index\]\] entities

- `samples`:

  Get the Samples R6 class object which can be used to call the BrAPI
  server for \[\$entityNamesiterStat.index\]\] entities

- `scales`:

  Get the Scales R6 class object which can be used to call the BrAPI
  server for \[\$entityNamesiterStat.index\]\] entities

- `seasons`:

  Get the Seasons R6 class object which can be used to call the BrAPI
  server for \[\$entityNamesiterStat.index\]\] entities

- `seedLots`:

  Get the SeedLots R6 class object which can be used to call the BrAPI
  server for \[\$entityNamesiterStat.index\]\] entities

- `studies`:

  Get the Studies R6 class object which can be used to call the BrAPI
  server for \[\$entityNamesiterStat.index\]\] entities

- `traits`:

  Get the Traits R6 class object which can be used to call the BrAPI
  server for \[\$entityNamesiterStat.index\]\] entities

- `trials`:

  Get the Trials R6 class object which can be used to call the BrAPI
  server for \[\$entityNamesiterStat.index\]\] entities

- `variants`:

  Get the Variants R6 class object which can be used to call the BrAPI
  server for \[\$entityNamesiterStat.index\]\] entities

- `variantSets`:

  Get the VariantSets R6 class object which can be used to call the
  BrAPI server for \[\$entityNamesiterStat.index\]\] entities

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

## Examples

``` r
BrAPIClient$new(token = "www.brapiserver.com")
#> Error in initialize(...): unused argument (token = "www.brapiserver.com")
```
