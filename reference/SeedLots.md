# SeedLots Class

The SeedLots class handles calling the BraAPI server and is a wrapper
class around httr2 functionality for the SeedLot entity

## Details

The SeedLots class handles calling the BraAPI server and is a wrapper
class around httr2 functionality for the SeedLot entity

## Methods

### Public methods

- [`SeedLots$new()`](#method-SeedLots-new)

- [`SeedLots$get()`](#method-SeedLots-get)

- [`SeedLots$getAll()`](#method-SeedLots-getAll)

- [`SeedLots$create()`](#method-SeedLots-create)

- [`SeedLots$update()`](#method-SeedLots-update)

- [`SeedLots$clone()`](#method-SeedLots-clone)

------------------------------------------------------------------------

### Method `new()`

Creates a new instance of this
[R6](https://r6.r-lib.org/reference/R6Class.html) class. It is not
recommended that this object is created separately from the BrAPIClient

#### Usage

    SeedLots$new(client)

#### Arguments

- `client`:

  THe BrAPIClient to be used for server communication

------------------------------------------------------------------------

### Method [`get()`](https://rdrr.io/r/base/get.html)

Gets a SeedLot object by DbId from the BrAPI server

#### Usage

    SeedLots$get(id)

#### Arguments

- `id`:

  The DbIid of the SeedLot to be returned

#### Returns

returns a SeedLot object by ID.

------------------------------------------------------------------------

### Method `getAll()`

Gets a list SeedLot objects from the BrAPI server Note the filtering
arguments are all optional and can be combined to filter the results The
value of the filters an be a single value or a vector of values

#### Usage

    SeedLots$getAll(
      commonCropNames = NULL,
      germplasmDbIds = NULL,
      germplasmNames = NULL,
      programDbIds = NULL,
      programNames = NULL,
      seedLotDbIds = NULL,
      crossDbIds = NULL,
      crossNames = NULL,
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

- `seedLotDbIds`:

  Unique id for a seed lot on this server

- `crossDbIds`:

  Search for Cross with this unique id

- `crossNames`:

  Search for Cross with this human readable name

- `page`:

  The page number of results to return, starting from 0

- `pageSize`:

  The maximum number of results to return per page

#### Returns

returns a paged and filtered list of SeedLot objects.

------------------------------------------------------------------------

### Method `create()`

Creates a SeedLot object on the BrAPI server.

#### Usage

    SeedLots$create(newValue)

#### Arguments

- `newValue`:

  The new SeedLot object to be created

------------------------------------------------------------------------

### Method [`update()`](https://rdrr.io/r/stats/update.html)

Creates a SeedLot object on the BrAPI server.

#### Usage

    SeedLots$update(value)

#### Arguments

- `value`:

  The updated SeedLot object to be sent to the server

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    SeedLots$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Examples

``` r
SeedLots$new()
#> Error in initialize(...): argument "client" is missing, with no default
```
