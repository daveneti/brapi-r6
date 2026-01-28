# GenomeMaps Class

The GenomeMaps class handles calling the BraAPI server and is a wrapper
class around httr2 functionality for the GenomeMap entity

## Details

The GenomeMaps class handles calling the BraAPI server and is a wrapper
class around httr2 functionality for the GenomeMap entity

## Methods

### Public methods

- [`GenomeMaps$new()`](#method-GenomeMaps-new)

- [`GenomeMaps$get()`](#method-GenomeMaps-get)

- [`GenomeMaps$getAll()`](#method-GenomeMaps-getAll)

- [`GenomeMaps$clone()`](#method-GenomeMaps-clone)

------------------------------------------------------------------------

### Method `new()`

Creates a new instance of this
[R6](https://r6.r-lib.org/reference/R6Class.html) class. It is not
recommended that this object is created separately from the BrAPIClient

#### Usage

    GenomeMaps$new(client)

#### Arguments

- `client`:

  THe BrAPIClient to be used for server communication

------------------------------------------------------------------------

### Method [`get()`](https://rdrr.io/r/base/get.html)

Gets a GenomeMap object by DbId from the BrAPI server

#### Usage

    GenomeMaps$get(id)

#### Arguments

- `id`:

  The DbIid of the GenomeMap to be returned

#### Returns

returns a GenomeMap object by ID.

------------------------------------------------------------------------

### Method `getAll()`

Gets a list GenomeMap objects from the BrAPI server Note the filtering
arguments are all optional and can be combined to filter the results The
value of the filters an be a single value or a vector of values

#### Usage

    GenomeMaps$getAll(
      commonCropNames = NULL,
      programDbIds = NULL,
      programNames = NULL,
      studyDbIds = NULL,
      studyNames = NULL,
      trialDbIds = NULL,
      trialNames = NULL,
      mapDbIds = NULL,
      mapPUI = NULL,
      scientificName = NULL,
      types = NULL,
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

- `mapDbIds`:

  The ID which uniquely identifies a `GenomeMap`

- `mapPUI`:

  The DOI or other permanent identifier for a `GenomeMap`

- `scientificName`:

  Full scientific binomial format name.

- `types`:

  The type of map, usually "Genetic" or "Physical"

- `page`:

  The page number of results to return, starting from 0

- `pageSize`:

  The maximum number of results to return per page

#### Returns

returns a paged and filtered list of GenomeMap objects.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    GenomeMaps$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Examples

``` r
GenomeMaps$new()
#> Error in initialize(...): argument "client" is missing, with no default
```
