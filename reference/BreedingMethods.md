# BreedingMethods Class

The BreedingMethods class handles calling the BraAPI server and is a
wrapper class around httr2 functionality for the BreedingMethod entity

## Details

The BreedingMethods class handles calling the BraAPI server and is a
wrapper class around httr2 functionality for the BreedingMethod entity

## Methods

### Public methods

- [`BreedingMethods$new()`](#method-BreedingMethods-new)

- [`BreedingMethods$get()`](#method-BreedingMethods-get)

- [`BreedingMethods$getAll()`](#method-BreedingMethods-getAll)

- [`BreedingMethods$clone()`](#method-BreedingMethods-clone)

------------------------------------------------------------------------

### Method `new()`

Creates a new instance of this
[R6](https://r6.r-lib.org/reference/R6Class.html) class. It is not
recommended that this object is created separately from the BrAPIClient

#### Usage

    BreedingMethods$new(client)

#### Arguments

- `client`:

  THe BrAPIClient to be used for server communication

------------------------------------------------------------------------

### Method [`get()`](https://rdrr.io/r/base/get.html)

Gets a BreedingMethod object by DbId from the BrAPI server

#### Usage

    BreedingMethods$get(id)

#### Arguments

- `id`:

  The DbIid of the BreedingMethod to be returned

#### Returns

returns a BreedingMethod object by ID.

------------------------------------------------------------------------

### Method `getAll()`

Gets a list BreedingMethod objects from the BrAPI server Note the
filtering arguments are all optional and can be combined to filter the
results The value of the filters an be a single value or a vector of
values

#### Usage

    BreedingMethods$getAll(page = 0, pageSize = 1000)

#### Arguments

- `page`:

  The page number of results to return, starting from 0

- `pageSize`:

  The maximum number of results to return per page

#### Returns

returns a paged and filtered list of BreedingMethod objects.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    BreedingMethods$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Examples

``` r
BreedingMethods$new()
#> Error in initialize(...): argument "client" is missing, with no default
```
