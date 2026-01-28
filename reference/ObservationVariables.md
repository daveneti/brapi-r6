# ObservationVariables Class

The ObservationVariables class handles calling the BraAPI server and is
a wrapper class around httr2 functionality for the ObservationVariable
entity

## Details

The ObservationVariables class handles calling the BraAPI server and is
a wrapper class around httr2 functionality for the ObservationVariable
entity

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

- [`ObservationVariables$new()`](#method-ObservationVariables-new)

- [`ObservationVariables$get()`](#method-ObservationVariables-get)

- [`ObservationVariables$getAll()`](#method-ObservationVariables-getAll)

- [`ObservationVariables$search()`](#method-ObservationVariables-search)

- [`ObservationVariables$searchResult()`](#method-ObservationVariables-searchResult)

- [`ObservationVariables$create()`](#method-ObservationVariables-create)

- [`ObservationVariables$update()`](#method-ObservationVariables-update)

- [`ObservationVariables$clone()`](#method-ObservationVariables-clone)

------------------------------------------------------------------------

### Method `new()`

Creates a new instance of this
[R6](https://r6.r-lib.org/reference/R6Class.html) class. It is not
recommended that this object is created separately from the BrAPIClient

#### Usage

    ObservationVariables$new(client)

#### Arguments

- `client`:

  THe BrAPIClient to be used for server communication

------------------------------------------------------------------------

### Method [`get()`](https://rdrr.io/r/base/get.html)

Gets a ObservationVariable object by DbId from the BrAPI server

#### Usage

    ObservationVariables$get(id)

#### Arguments

- `id`:

  The DbIid of the ObservationVariable to be returned

#### Returns

returns a ObservationVariable object by ID.

------------------------------------------------------------------------

### Method `getAll()`

Gets a list ObservationVariable objects from the BrAPI server Note the
filtering arguments are all optional and can be combined to filter the
results The value of the filters an be a single value or a vector of
values

#### Usage

    ObservationVariables$getAll(
      observationVariableDbIds = NULL,
      observationVariableNames = NULL,
      observationVariablePUIs = NULL,
      commonCropNames = NULL,
      programDbIds = NULL,
      programNames = NULL,
      studyDbIds = NULL,
      studyNames = NULL,
      trialDbIds = NULL,
      trialNames = NULL,
      studyDbId = NULL,
      ontologyDbIds = NULL,
      methodDbIds = NULL,
      methodNames = NULL,
      methodPUIs = NULL,
      scaleDbIds = NULL,
      scaleNames = NULL,
      scalePUIs = NULL,
      dataTypes = NULL,
      traitClasses = NULL,
      traitDbIds = NULL,
      traitNames = NULL,
      traitPUIs = NULL,
      traitAttributes = NULL,
      traitAttributePUIs = NULL,
      traitEntities = NULL,
      traitEntityPUIs = NULL,
      page = 0,
      pageSize = 1000
    )

#### Arguments

- `observationVariableDbIds`:

  The DbIds of Variables to search for

- `observationVariableNames`:

  The names of Variables to search for

- `observationVariablePUIs`:

  The Permanent Unique Identifier of an Observation Variable, usually in
  the form of a URI

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

- `studyDbId`:

  \*\*Deprecated in v2.

- `ontologyDbIds`:

  List of ontology IDs to search for

- `methodDbIds`:

  List of methods to filter search results

- `methodNames`:

  Human readable name for the method \<br/\>MIAPPE V1.

- `methodPUIs`:

  The Permanent Unique Identifier of a Method, usually in the form of a
  URI

- `scaleDbIds`:

  The unique identifier for a Scale

- `scaleNames`:

  Name of the scale \<br/\>MIAPPE V1.

- `scalePUIs`:

  The Permanent Unique Identifier of a Scale, usually in the form of a
  URI

- `dataTypes`:

  List of scale data types to filter search results

- `traitClasses`:

  List of trait classes to filter search results

- `traitDbIds`:

  The unique identifier for a Trait

- `traitNames`:

  The human readable name of a trait \<br/\>MIAPPE V1.

- `traitPUIs`:

  The Permanent Unique Identifier of a Trait, usually in the form of a
  URI

- `traitAttributes`:

  A trait can be decomposed as "Trait" = "Entity" + "Attribute", the
  attribute is the observed feature (or characteristic) of the entity e.

- `traitAttributePUIs`:

  The Permanent Unique Identifier of a Trait Attribute, usually in the
  form of a URI \<br/\>A trait can be decomposed as "Trait" = "Entity" +
  "Attribute", the attribute is the observed feature (or characteristic)
  of the entity e.

- `traitEntities`:

  A trait can be decomposed as "Trait" = "Entity" + "Attribute", the
  entity is the part of the plant that the trait refers to e.

- `traitEntityPUIs`:

  The Permanent Unique Identifier of a Trait Entity, usually in the form
  of a URI \<br/\>A trait can be decomposed as "Trait" = "Entity" +
  "Attribute", the entity is the part of the plant that the trait refers
  to e.

- `page`:

  The page number of results to return, starting from 0

- `pageSize`:

  The maximum number of results to return per page

#### Returns

returns a paged and filtered list of ObservationVariable objects.

------------------------------------------------------------------------

### Method [`search()`](https://rdrr.io/r/base/search.html)

Searches for ObservationVariable objects on the BrAPI server. The server
may return the paged results or a search result ID for later retrieval

#### Usage

    ObservationVariables$search(
      observationVariableDbIds = NULL,
      observationVariableNames = NULL,
      observationVariablePUIs = NULL,
      commonCropNames = NULL,
      programDbIds = NULL,
      programNames = NULL,
      studyDbIds = NULL,
      studyNames = NULL,
      trialDbIds = NULL,
      trialNames = NULL,
      studyDbId = NULL,
      ontologyDbIds = NULL,
      methodDbIds = NULL,
      methodNames = NULL,
      methodPUIs = NULL,
      scaleDbIds = NULL,
      scaleNames = NULL,
      scalePUIs = NULL,
      dataTypes = NULL,
      traitClasses = NULL,
      traitDbIds = NULL,
      traitNames = NULL,
      traitPUIs = NULL,
      traitAttributes = NULL,
      traitAttributePUIs = NULL,
      traitEntities = NULL,
      traitEntityPUIs = NULL,
      page = 0,
      pageSize = 1000
    )

#### Arguments

- `observationVariableDbIds`:

  The DbIds of Variables to search for

- `observationVariableNames`:

  The names of Variables to search for

- `observationVariablePUIs`:

  The Permanent Unique Identifier of an Observation Variable, usually in
  the form of a URI

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

- `studyDbId`:

  \*\*Deprecated in v2.

- `ontologyDbIds`:

  List of ontology IDs to search for

- `methodDbIds`:

  List of methods to filter search results

- `methodNames`:

  Human readable name for the method \<br/\>MIAPPE V1.

- `methodPUIs`:

  The Permanent Unique Identifier of a Method, usually in the form of a
  URI

- `scaleDbIds`:

  The unique identifier for a Scale

- `scaleNames`:

  Name of the scale \<br/\>MIAPPE V1.

- `scalePUIs`:

  The Permanent Unique Identifier of a Scale, usually in the form of a
  URI

- `dataTypes`:

  List of scale data types to filter search results

- `traitClasses`:

  List of trait classes to filter search results

- `traitDbIds`:

  The unique identifier for a Trait

- `traitNames`:

  The human readable name of a trait \<br/\>MIAPPE V1.

- `traitPUIs`:

  The Permanent Unique Identifier of a Trait, usually in the form of a
  URI

- `traitAttributes`:

  A trait can be decomposed as "Trait" = "Entity" + "Attribute", the
  attribute is the observed feature (or characteristic) of the entity e.

- `traitAttributePUIs`:

  The Permanent Unique Identifier of a Trait Attribute, usually in the
  form of a URI \<br/\>A trait can be decomposed as "Trait" = "Entity" +
  "Attribute", the attribute is the observed feature (or characteristic)
  of the entity e.

- `traitEntities`:

  A trait can be decomposed as "Trait" = "Entity" + "Attribute", the
  entity is the part of the plant that the trait refers to e.

- `traitEntityPUIs`:

  The Permanent Unique Identifier of a Trait Entity, usually in the form
  of a URI \<br/\>A trait can be decomposed as "Trait" = "Entity" +
  "Attribute", the entity is the part of the plant that the trait refers
  to e. using the searchResult function

- `page`:

  The page number of results to return, starting from 0

- `pageSize`:

  The maximum number of results to return per page

#### Returns

returns the search result or an ID to the results.

Get the result of a search for ObservationVariable objects on the BrAPI
server. If the server returned search result ID for later retrieval, use
this function to get the results.

------------------------------------------------------------------------

### Method `searchResult()`

#### Usage

    ObservationVariables$searchResult(searchResultId, page = 0, pageSize = 1000)

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

Creates a ObservationVariable object on the BrAPI server.

#### Usage

    ObservationVariables$create(newValue)

#### Arguments

- `newValue`:

  The new ObservationVariable object to be created

------------------------------------------------------------------------

### Method [`update()`](https://rdrr.io/r/stats/update.html)

Creates a ObservationVariable object on the BrAPI server.

#### Usage

    ObservationVariables$update(value)

#### Arguments

- `value`:

  The updated ObservationVariable object to be sent to the server

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    ObservationVariables$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
