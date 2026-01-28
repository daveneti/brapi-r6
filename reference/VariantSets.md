# VariantSets Class

The VariantSets class handles calling the BraAPI server and is a wrapper
class around httr2 functionality for the VariantSet entity

## Details

The VariantSets class handles calling the BraAPI server and is a wrapper
class around httr2 functionality for the VariantSet entity

## Methods

### Public methods

- [`VariantSets$new()`](#method-VariantSets-new)

- [`VariantSets$get()`](#method-VariantSets-get)

- [`VariantSets$getAll()`](#method-VariantSets-getAll)

- [`VariantSets$search()`](#method-VariantSets-search)

- [`VariantSets$searchResult()`](#method-VariantSets-searchResult)

- [`VariantSets$clone()`](#method-VariantSets-clone)

------------------------------------------------------------------------

### Method `new()`

Creates a new instance of this
[R6](https://r6.r-lib.org/reference/R6Class.html) class. It is not
recommended that this object is created separately from the BrAPIClient

#### Usage

    VariantSets$new(client)

#### Arguments

- `client`:

  THe BrAPIClient to be used for server communication

------------------------------------------------------------------------

### Method [`get()`](https://rdrr.io/r/base/get.html)

Gets a VariantSet object by DbId from the BrAPI server

#### Usage

    VariantSets$get(id)

#### Arguments

- `id`:

  The DbIid of the VariantSet to be returned

#### Returns

returns a VariantSet object by ID.

------------------------------------------------------------------------

### Method `getAll()`

Gets a list VariantSet objects from the BrAPI server Note the filtering
arguments are all optional and can be combined to filter the results The
value of the filters an be a single value or a vector of values

#### Usage

    VariantSets$getAll(
      commonCropNames = NULL,
      programDbIds = NULL,
      programNames = NULL,
      studyDbIds = NULL,
      studyNames = NULL,
      trialDbIds = NULL,
      trialNames = NULL,
      callSetDbIds = NULL,
      variantDbIds = NULL,
      variantSetDbIds = NULL,
      referenceDbIds = NULL,
      referenceSetDbIds = NULL,
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

- `studyDbIds`:

  List of study identifiers to search for

- `studyNames`:

  List of study names to filter search results

- `trialDbIds`:

  The ID which uniquely identifies a trial to search for

- `trialNames`:

  The human readable name of a trial to search for

- `callSetDbIds`:

  The unique identifier representing a CallSet

- `variantDbIds`:

  The unique identifier representing a Variant

- `variantSetDbIds`:

  The unique identifier representing a VariantSet

- `referenceDbIds`:

  The unique identifier representing a genotype Reference

- `referenceSetDbIds`:

  The unique identifier representing a genotype ReferenceSet

- `page`:

  The page number of results to return, starting from 0

- `pageSize`:

  The maximum number of results to return per page

#### Returns

returns a paged and filtered list of VariantSet objects.

------------------------------------------------------------------------

### Method [`search()`](https://rdrr.io/r/base/search.html)

Searches for VariantSet objects on the BrAPI server. The server may
return the paged results or a search result ID for later retrieval

#### Usage

    VariantSets$search(
      commonCropNames = NULL,
      programDbIds = NULL,
      programNames = NULL,
      studyDbIds = NULL,
      studyNames = NULL,
      trialDbIds = NULL,
      trialNames = NULL,
      callSetDbIds = NULL,
      variantDbIds = NULL,
      variantSetDbIds = NULL,
      referenceDbIds = NULL,
      referenceSetDbIds = NULL,
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

- `studyDbIds`:

  List of study identifiers to search for

- `studyNames`:

  List of study names to filter search results

- `trialDbIds`:

  The ID which uniquely identifies a trial to search for

- `trialNames`:

  The human readable name of a trial to search for

- `callSetDbIds`:

  The unique identifier representing a CallSet

- `variantDbIds`:

  The unique identifier representing a Variant

- `variantSetDbIds`:

  The unique identifier representing a VariantSet

- `referenceDbIds`:

  The unique identifier representing a genotype Reference

- `referenceSetDbIds`:

  The unique identifier representing a genotype ReferenceSet using the
  searchResult function

- `page`:

  The page number of results to return, starting from 0

- `pageSize`:

  The maximum number of results to return per page

#### Returns

returns the search result or an ID to the results.

Get the result of a search for VariantSet objects on the BrAPI server.
If the server returned search result ID for later retrieval, use this
function to get the results.

------------------------------------------------------------------------

### Method `searchResult()`

#### Usage

    VariantSets$searchResult(searchResultId, page = 0, pageSize = 1000)

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

    VariantSets$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Examples

``` r
VariantSets$new()
#> Error in initialize(...): argument "client" is missing, with no default
```
