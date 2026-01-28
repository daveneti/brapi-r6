# ReferenceSets Class

The ReferenceSets class handles calling the BraAPI server and is a
wrapper class around httr2 functionality for the ReferenceSet entity

## Details

The ReferenceSets class handles calling the BraAPI server and is a
wrapper class around httr2 functionality for the ReferenceSet entity

## Methods

### Public methods

- [`ReferenceSets$new()`](#method-ReferenceSets-new)

- [`ReferenceSets$get()`](#method-ReferenceSets-get)

- [`ReferenceSets$getAll()`](#method-ReferenceSets-getAll)

- [`ReferenceSets$search()`](#method-ReferenceSets-search)

- [`ReferenceSets$searchResult()`](#method-ReferenceSets-searchResult)

- [`ReferenceSets$clone()`](#method-ReferenceSets-clone)

------------------------------------------------------------------------

### Method `new()`

Creates a new instance of this
[R6](https://r6.r-lib.org/reference/R6Class.html) class. It is not
recommended that this object is created separately from the BrAPIClient

#### Usage

    ReferenceSets$new(client)

#### Arguments

- `client`:

  THe BrAPIClient to be used for server communication

------------------------------------------------------------------------

### Method [`get()`](https://rdrr.io/r/base/get.html)

Gets a ReferenceSet object by DbId from the BrAPI server

#### Usage

    ReferenceSets$get(id)

#### Arguments

- `id`:

  The DbIid of the ReferenceSet to be returned

#### Returns

returns a ReferenceSet object by ID.

------------------------------------------------------------------------

### Method `getAll()`

Gets a list ReferenceSet objects from the BrAPI server Note the
filtering arguments are all optional and can be combined to filter the
results The value of the filters an be a single value or a vector of
values

#### Usage

    ReferenceSets$getAll(
      commonCropNames = NULL,
      germplasmDbIds = NULL,
      germplasmNames = NULL,
      programDbIds = NULL,
      programNames = NULL,
      studyDbIds = NULL,
      studyNames = NULL,
      trialDbIds = NULL,
      trialNames = NULL,
      accessions = NULL,
      assemblyPUIs = NULL,
      md5checksums = NULL,
      referenceSetDbIds = NULL,
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

- `accessions`:

  If set, return the reference sets for which the `accession` matches
  this string (case-sensitive, exact match).

- `assemblyPUIs`:

  If set, return the reference sets for which the `assemblyId` matches
  this string (case-sensitive, exact match).

- `md5checksums`:

  If set, return the reference sets for which the `md5checksum` matches
  this string (case-sensitive, exact match).

- `referenceSetDbIds`:

  The `ReferenceSets` to search.

- `page`:

  The page number of results to return, starting from 0

- `pageSize`:

  The maximum number of results to return per page

#### Returns

returns a paged and filtered list of ReferenceSet objects.

------------------------------------------------------------------------

### Method [`search()`](https://rdrr.io/r/base/search.html)

Searches for ReferenceSet objects on the BrAPI server. The server may
return the paged results or a search result ID for later retrieval

#### Usage

    ReferenceSets$search(
      commonCropNames = NULL,
      germplasmDbIds = NULL,
      germplasmNames = NULL,
      programDbIds = NULL,
      programNames = NULL,
      studyDbIds = NULL,
      studyNames = NULL,
      trialDbIds = NULL,
      trialNames = NULL,
      accessions = NULL,
      assemblyPUIs = NULL,
      md5checksums = NULL,
      referenceSetDbIds = NULL,
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

- `accessions`:

  If set, return the reference sets for which the `accession` matches
  this string (case-sensitive, exact match).

- `assemblyPUIs`:

  If set, return the reference sets for which the `assemblyId` matches
  this string (case-sensitive, exact match).

- `md5checksums`:

  If set, return the reference sets for which the `md5checksum` matches
  this string (case-sensitive, exact match).

- `referenceSetDbIds`:

  The `ReferenceSets` to search. using the searchResult function

- `page`:

  The page number of results to return, starting from 0

- `pageSize`:

  The maximum number of results to return per page

#### Returns

returns the search result or an ID to the results.

Get the result of a search for ReferenceSet objects on the BrAPI server.
If the server returned search result ID for later retrieval, use this
function to get the results.

------------------------------------------------------------------------

### Method `searchResult()`

#### Usage

    ReferenceSets$searchResult(searchResultId, page = 0, pageSize = 1000)

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

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    ReferenceSets$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Examples

``` r
ReferenceSets$new()
#> Error in initialize(...): argument "client" is missing, with no default
```
