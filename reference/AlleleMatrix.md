# AlleleMatrix Class

The AlleleMatrix class handles calling the BraAPI server and is a
wrapper class around httr2 functionality for the AlleleMatrix entity

## Details

The AlleleMatrix class handles calling the BraAPI server and is a
wrapper class around httr2 functionality for the AlleleMatrix entity

## Methods

### Public methods

- [`AlleleMatrix$new()`](#method-AlleleMatrix-new)

- [`AlleleMatrix$search()`](#method-AlleleMatrix-search)

- [`AlleleMatrix$searchResult()`](#method-AlleleMatrix-searchResult)

- [`AlleleMatrix$clone()`](#method-AlleleMatrix-clone)

------------------------------------------------------------------------

### Method `new()`

Creates a new instance of this
[R6](https://r6.r-lib.org/reference/R6Class.html) class. It is not
recommended that this object is created separately from the BrAPIClient

#### Usage

    AlleleMatrix$new(client)

#### Arguments

- `client`:

  THe BrAPIClient to be used for server communication

------------------------------------------------------------------------

### Method [`search()`](https://rdrr.io/r/base/search.html)

Searches for AlleleMatrix objects on the BrAPI server. The server may
return the paged results or a search result ID for later retrieval

#### Usage

    AlleleMatrix$search(
      pagination = NULL,
      preview = NULL,
      dataMatrixNames = NULL,
      dataMatrixAbbreviations = NULL,
      positionRanges = NULL,
      germplasmNames = NULL,
      germplasmPUIs = NULL,
      germplasmDbIds = NULL,
      sampleDbIds = NULL,
      callSetDbIds = NULL,
      variantDbIds = NULL,
      variantSetDbIds = NULL,
      expandHomozygotes = NULL,
      sepPhased = NULL,
      sepUnphased = NULL,
      unknownString = NULL,
      page = 0,
      pageSize = 1000
    )

#### Arguments

- `pagination`:

  Pagination for the matrix

- `preview`:

  Default Value = false \<br/\> If 'preview' is set to true, then the
  server should only return the lists of 'callSetDbIds', 'variantDbIds',
  and 'variantSetDbIds'.

- `dataMatrixNames`:

  `dataMatrixNames` is a list of names (ie 'Genotype', 'Read Depth'
  etc).

- `dataMatrixAbbreviations`:

  `dataMatrixAbbreviations` is a comma seperated list of abbreviations
  (ie 'GT', 'RD' etc).

- `positionRanges`:

  The postion range to search \<br/\> Uses the format
  "\<chrom\>:\<start\>-\<end\>" where \<chrom\> is the chromosome name,
  \<start\> is the starting position of the range, and \<end\> is the
  ending position of the range

- `germplasmNames`:

  A list of human readable `Germplasm` names

- `germplasmPUIs`:

  A list of permanent unique identifiers associated with `Germplasm`

- `germplasmDbIds`:

  A list of IDs which uniquely identify `Germplasm` within the given
  database server

- `sampleDbIds`:

  A list of IDs which uniquely identify `Samples` within the given
  database server

- `callSetDbIds`:

  A list of IDs which uniquely identify `CallSets` within the given
  database server

- `variantDbIds`:

  A list of IDs which uniquely identify `Variants` within the given
  database server

- `variantSetDbIds`:

  A list of IDs which uniquely identify `VariantSets` within the given
  database server

- `expandHomozygotes`:

  Should homozygotes be expanded (true) or collapsed into a single
  occurrence (false)

- `sepPhased`:

  The string used as a separator for phased allele calls.

- `sepUnphased`:

  The string used as a separator for unphased allele calls.

- `unknownString`:

  The string used as a representation for missing data. using the
  searchResult function

- `page`:

  The page number of results to return, starting from 0

- `pageSize`:

  The maximum number of results to return per page

#### Returns

returns the search result or an ID to the results.

Get the result of a search for AlleleMatrix objects on the BrAPI server.
If the server returned search result ID for later retrieval, use this
function to get the results.

------------------------------------------------------------------------

### Method `searchResult()`

#### Usage

    AlleleMatrix$searchResult(searchResultId, page = 0, pageSize = 1000)

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

    AlleleMatrix$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Examples

``` r
AlleleMatrix$new()
#> Error in initialize(...): argument "client" is missing, with no default
```
