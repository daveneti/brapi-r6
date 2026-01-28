# People Class

The People class handles calling the BraAPI server and is a wrapper
class around httr2 functionality for the Person entity

## Details

The People class handles calling the BraAPI server and is a wrapper
class around httr2 functionality for the Person entity

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
[`PedigreeNodes`](PedigreeNodes.md),
[`PlannedCrosses`](PlannedCrosses.md), [`Plates`](Plates.md),
[`Programs`](Programs.md), [`ReferenceSets`](ReferenceSets.md),
[`References`](References.md), [`Samples`](Samples.md),
[`Scales`](Scales.md), [`Seasons`](Seasons.md),
[`SeedLots`](SeedLots.md), [`Studies`](Studies.md),
[`Traits`](Traits.md), [`Trials`](Trials.md),
[`VariantSets`](VariantSets.md), [`Variants`](Variants.md)

## Methods

### Public methods

- [`People$new()`](#method-People-new)

- [`People$get()`](#method-People-get)

- [`People$getAll()`](#method-People-getAll)

- [`People$search()`](#method-People-search)

- [`People$searchResult()`](#method-People-searchResult)

- [`People$create()`](#method-People-create)

- [`People$update()`](#method-People-update)

- [`People$clone()`](#method-People-clone)

------------------------------------------------------------------------

### Method `new()`

Creates a new instance of this
[R6](https://r6.r-lib.org/reference/R6Class.html) class. It is not
recommended that this object is created separately from the BrAPIClient

#### Usage

    People$new(client)

#### Arguments

- `client`:

  THe BrAPIClient to be used for server communication

------------------------------------------------------------------------

### Method [`get()`](https://rdrr.io/r/base/get.html)

Gets a Person object by DbId from the BrAPI server

#### Usage

    People$get(id)

#### Arguments

- `id`:

  The DbIid of the Person to be returned

#### Returns

returns a Person object by ID.

------------------------------------------------------------------------

### Method `getAll()`

Gets a list Person objects from the BrAPI server Note the filtering
arguments are all optional and can be combined to filter the results The
value of the filters an be a single value or a vector of values

#### Usage

    People$getAll(
      commonCropNames = NULL,
      programDbIds = NULL,
      programNames = NULL,
      emailAddresses = NULL,
      firstNames = NULL,
      lastNames = NULL,
      mailingAddresses = NULL,
      middleNames = NULL,
      personDbIds = NULL,
      phoneNumbers = NULL,
      userIDs = NULL,
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

- `emailAddresses`:

  email address for this person

- `firstNames`:

  Persons first name

- `lastNames`:

  Persons last name

- `mailingAddresses`:

  physical address of this person

- `middleNames`:

  Persons middle name

- `personDbIds`:

  Unique ID for this person

- `phoneNumbers`:

  phone number of this person

- `userIDs`:

  A systems user ID associated with this person.

- `page`:

  The page number of results to return, starting from 0

- `pageSize`:

  The maximum number of results to return per page

#### Returns

returns a paged and filtered list of Person objects.

------------------------------------------------------------------------

### Method [`search()`](https://rdrr.io/r/base/search.html)

Searches for Person objects on the BrAPI server. The server may return
the paged results or a search result ID for later retrieval

#### Usage

    People$search(
      commonCropNames = NULL,
      programDbIds = NULL,
      programNames = NULL,
      emailAddresses = NULL,
      firstNames = NULL,
      lastNames = NULL,
      mailingAddresses = NULL,
      middleNames = NULL,
      personDbIds = NULL,
      phoneNumbers = NULL,
      userIDs = NULL,
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

- `emailAddresses`:

  email address for this person

- `firstNames`:

  Persons first name

- `lastNames`:

  Persons last name

- `mailingAddresses`:

  physical address of this person

- `middleNames`:

  Persons middle name

- `personDbIds`:

  Unique ID for this person

- `phoneNumbers`:

  phone number of this person

- `userIDs`:

  A systems user ID associated with this person. using the searchResult
  function

- `page`:

  The page number of results to return, starting from 0

- `pageSize`:

  The maximum number of results to return per page

#### Returns

returns the search result or an ID to the results.

Get the result of a search for Person objects on the BrAPI server. If
the server returned search result ID for later retrieval, use this
function to get the results.

------------------------------------------------------------------------

### Method `searchResult()`

#### Usage

    People$searchResult(searchResultId, page = 0, pageSize = 1000)

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

Creates a Person object on the BrAPI server.

#### Usage

    People$create(newValue)

#### Arguments

- `newValue`:

  The new Person object to be created

------------------------------------------------------------------------

### Method [`update()`](https://rdrr.io/r/stats/update.html)

Creates a Person object on the BrAPI server.

#### Usage

    People$update(value)

#### Arguments

- `value`:

  The updated Person object to be sent to the server

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    People$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
