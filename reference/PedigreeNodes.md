# PedigreeNodes Class

The PedigreeNodes class handles calling the BraAPI server and is a
wrapper class around httr2 functionality for the PedigreeNode entity

## Details

The PedigreeNodes class handles calling the BraAPI server and is a
wrapper class around httr2 functionality for the PedigreeNode entity

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
[`People`](People.md), [`PlannedCrosses`](PlannedCrosses.md),
[`Plates`](Plates.md), [`Programs`](Programs.md),
[`ReferenceSets`](ReferenceSets.md), [`References`](References.md),
[`Samples`](Samples.md), [`Scales`](Scales.md), [`Seasons`](Seasons.md),
[`SeedLots`](SeedLots.md), [`Studies`](Studies.md),
[`Traits`](Traits.md), [`Trials`](Trials.md),
[`VariantSets`](VariantSets.md), [`Variants`](Variants.md)

## Methods

### Public methods

- [`PedigreeNodes$new()`](#method-PedigreeNodes-new)

- [`PedigreeNodes$getAll()`](#method-PedigreeNodes-getAll)

- [`PedigreeNodes$search()`](#method-PedigreeNodes-search)

- [`PedigreeNodes$searchResult()`](#method-PedigreeNodes-searchResult)

- [`PedigreeNodes$create()`](#method-PedigreeNodes-create)

- [`PedigreeNodes$clone()`](#method-PedigreeNodes-clone)

------------------------------------------------------------------------

### Method `new()`

Creates a new instance of this
[R6](https://r6.r-lib.org/reference/R6Class.html) class. It is not
recommended that this object is created separately from the BrAPIClient

#### Usage

    PedigreeNodes$new(client)

#### Arguments

- `client`:

  THe BrAPIClient to be used for server communication

------------------------------------------------------------------------

### Method `getAll()`

Gets a list PedigreeNode objects from the BrAPI server Note the
filtering arguments are all optional and can be combined to filter the
results The value of the filters an be a single value or a vector of
values

#### Usage

    PedigreeNodes$getAll(
      commonCropNames = NULL,
      germplasmDbIds = NULL,
      germplasmNames = NULL,
      programDbIds = NULL,
      programNames = NULL,
      studyDbIds = NULL,
      studyNames = NULL,
      trialDbIds = NULL,
      trialNames = NULL,
      germplasmPUIs = NULL,
      accessionNumbers = NULL,
      collections = NULL,
      familyCodes = NULL,
      instituteCodes = NULL,
      binomialNames = NULL,
      genus = NULL,
      species = NULL,
      synonyms = NULL,
      includeParents = NULL,
      includeSiblings = NULL,
      includeProgeny = NULL,
      includeFullTree = NULL,
      pedigreeDepth = NULL,
      progenyDepth = NULL,
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

- `germplasmPUIs`:

  List of Permanent Unique Identifiers to identify germplasm

- `accessionNumbers`:

  A collection of unique identifiers for materials or germplasm within a
  genebank MCPD (v2.

- `collections`:

  A specific panel/collection/population name this germplasm belongs to.

- `familyCodes`:

  A familyCode representing the family this germplasm belongs to.

- `instituteCodes`:

  The code for the institute that maintains the material.

- `binomialNames`:

  List of the full binomial name (scientific name) to identify a
  germplasm

- `genus`:

  List of Genus names to identify germplasm

- `species`:

  List of Species names to identify germplasm

- `synonyms`:

  List of alternative names or IDs used to reference this germplasm

- `includeParents`:

  If this parameter is true, include the array of parents in the
  response

- `includeSiblings`:

  If this parameter is true, include the array of siblings in the
  response

- `includeProgeny`:

  If this parameter is true, include the array of progeny in the
  response

- `includeFullTree`:

  If this parameter is true, recursively include ALL of the nodes
  available in this pedigree tree

- `pedigreeDepth`:

  Recursively include this number of levels up the tree in the response
  (parents, grand-parents, great-grand-parents, etc)

- `progenyDepth`:

  Recursively include this number of levels down the tree in the
  response (children, grand-children, great-grand-children, etc)

- `page`:

  The page number of results to return, starting from 0

- `pageSize`:

  The maximum number of results to return per page

#### Returns

returns a paged and filtered list of PedigreeNode objects.

------------------------------------------------------------------------

### Method [`search()`](https://rdrr.io/r/base/search.html)

Searches for PedigreeNode objects on the BrAPI server. The server may
return the paged results or a search result ID for later retrieval

#### Usage

    PedigreeNodes$search(
      commonCropNames = NULL,
      germplasmDbIds = NULL,
      germplasmNames = NULL,
      programDbIds = NULL,
      programNames = NULL,
      studyDbIds = NULL,
      studyNames = NULL,
      trialDbIds = NULL,
      trialNames = NULL,
      germplasmPUIs = NULL,
      accessionNumbers = NULL,
      collections = NULL,
      familyCodes = NULL,
      instituteCodes = NULL,
      binomialNames = NULL,
      genus = NULL,
      species = NULL,
      synonyms = NULL,
      includeParents = NULL,
      includeSiblings = NULL,
      includeProgeny = NULL,
      includeFullTree = NULL,
      pedigreeDepth = NULL,
      progenyDepth = NULL,
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

- `germplasmPUIs`:

  List of Permanent Unique Identifiers to identify germplasm

- `accessionNumbers`:

  A collection of unique identifiers for materials or germplasm within a
  genebank MCPD (v2.

- `collections`:

  A specific panel/collection/population name this germplasm belongs to.

- `familyCodes`:

  A familyCode representing the family this germplasm belongs to.

- `instituteCodes`:

  The code for the institute that maintains the material.

- `binomialNames`:

  List of the full binomial name (scientific name) to identify a
  germplasm

- `genus`:

  List of Genus names to identify germplasm

- `species`:

  List of Species names to identify germplasm

- `synonyms`:

  List of alternative names or IDs used to reference this germplasm

- `includeParents`:

  If this parameter is true, include the array of parents in the
  response

- `includeSiblings`:

  If this parameter is true, include the array of siblings in the
  response

- `includeProgeny`:

  If this parameter is true, include the array of progeny in the
  response

- `includeFullTree`:

  If this parameter is true, recursively include ALL of the nodes
  available in this pedigree tree

- `pedigreeDepth`:

  Recursively include this number of levels up the tree in the response
  (parents, grand-parents, great-grand-parents, etc)

- `progenyDepth`:

  Recursively include this number of levels down the tree in the
  response (children, grand-children, great-grand-children, etc) using
  the searchResult function

- `page`:

  The page number of results to return, starting from 0

- `pageSize`:

  The maximum number of results to return per page

#### Returns

returns the search result or an ID to the results.

Get the result of a search for PedigreeNode objects on the BrAPI server.
If the server returned search result ID for later retrieval, use this
function to get the results.

------------------------------------------------------------------------

### Method `searchResult()`

#### Usage

    PedigreeNodes$searchResult(searchResultId, page = 0, pageSize = 1000)

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

Creates a PedigreeNode object on the BrAPI server.

#### Usage

    PedigreeNodes$create(newValue)

#### Arguments

- `newValue`:

  The new PedigreeNode object to be created

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    PedigreeNodes$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
