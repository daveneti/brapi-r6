# Germplasm Class

The Germplasm class handles calling the BraAPI server and is a wrapper
class around httr2 functionality for the Germplasm entity

## Details

The Germplasm class handles calling the BraAPI server and is a wrapper
class around httr2 functionality for the Germplasm entity

## Methods

### Public methods

- [`Germplasm$new()`](#method-Germplasm-new)

- [`Germplasm$get()`](#method-Germplasm-get)

- [`Germplasm$getAll()`](#method-Germplasm-getAll)

- [`Germplasm$search()`](#method-Germplasm-search)

- [`Germplasm$searchResult()`](#method-Germplasm-searchResult)

- [`Germplasm$create()`](#method-Germplasm-create)

- [`Germplasm$update()`](#method-Germplasm-update)

- [`Germplasm$clone()`](#method-Germplasm-clone)

------------------------------------------------------------------------

### Method `new()`

Creates a new instance of this
[R6](https://r6.r-lib.org/reference/R6Class.html) class. It is not
recommended that this object is created separately from the BrAPIClient

#### Usage

    Germplasm$new(client)

#### Arguments

- `client`:

  THe BrAPIClient to be used for server communication

------------------------------------------------------------------------

### Method [`get()`](https://rdrr.io/r/base/get.html)

Gets a Germplasm object by DbId from the BrAPI server

#### Usage

    Germplasm$get(id)

#### Arguments

- `id`:

  The DbIid of the Germplasm to be returned

#### Returns

returns a Germplasm object by ID.

------------------------------------------------------------------------

### Method `getAll()`

Gets a list Germplasm objects from the BrAPI server Note the filtering
arguments are all optional and can be combined to filter the results The
value of the filters an be a single value or a vector of values

#### Usage

    Germplasm$getAll(
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
      parentDbIds = NULL,
      progenyDbIds = NULL,
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

- `parentDbIds`:

  Search for Germplasm with these parents

- `progenyDbIds`:

  Search for Germplasm with these children

- `page`:

  The page number of results to return, starting from 0

- `pageSize`:

  The maximum number of results to return per page

#### Returns

returns a paged and filtered list of Germplasm objects.

------------------------------------------------------------------------

### Method [`search()`](https://rdrr.io/r/base/search.html)

Searches for Germplasm objects on the BrAPI server. The server may
return the paged results or a search result ID for later retrieval

#### Usage

    Germplasm$search(
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
      parentDbIds = NULL,
      progenyDbIds = NULL,
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

- `parentDbIds`:

  Search for Germplasm with these parents

- `progenyDbIds`:

  Search for Germplasm with these children using the searchResult
  function

- `page`:

  The page number of results to return, starting from 0

- `pageSize`:

  The maximum number of results to return per page

#### Returns

returns the search result or an ID to the results.

Get the result of a search for Germplasm objects on the BrAPI server. If
the server returned search result ID for later retrieval, use this
function to get the results.

------------------------------------------------------------------------

### Method `searchResult()`

#### Usage

    Germplasm$searchResult(searchResultId, page = 0, pageSize = 1000)

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

Creates a Germplasm object on the BrAPI server.

#### Usage

    Germplasm$create(newValue)

#### Arguments

- `newValue`:

  The new Germplasm object to be created

------------------------------------------------------------------------

### Method [`update()`](https://rdrr.io/r/stats/update.html)

Creates a Germplasm object on the BrAPI server.

#### Usage

    Germplasm$update(value)

#### Arguments

- `value`:

  The updated Germplasm object to be sent to the server

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    Germplasm$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Examples

``` r
Germplasm$new()
#> Error in initialize(...): argument "client" is missing, with no default
```
