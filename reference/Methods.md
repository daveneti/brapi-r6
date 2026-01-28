# Methods Class

The Methods class handles calling the BraAPI server and is a wrapper
class around httr2 functionality for the Method entity

## Details

The Methods class handles calling the BraAPI server and is a wrapper
class around httr2 functionality for the Method entity

## Methods

### Public methods

- [`Methods$new()`](#method-Methods-new)

- [`Methods$get()`](#method-Methods-get)

- [`Methods$getAll()`](#method-Methods-getAll)

- [`Methods$create()`](#method-Methods-create)

- [`Methods$update()`](#method-Methods-update)

- [`Methods$clone()`](#method-Methods-clone)

------------------------------------------------------------------------

### Method `new()`

Creates a new instance of this
[R6](https://r6.r-lib.org/reference/R6Class.html) class. It is not
recommended that this object is created separately from the BrAPIClient

#### Usage

    Methods$new(client)

#### Arguments

- `client`:

  THe BrAPIClient to be used for server communication

------------------------------------------------------------------------

### Method [`get()`](https://rdrr.io/r/base/get.html)

Gets a Method object by DbId from the BrAPI server

#### Usage

    Methods$get(id)

#### Arguments

- `id`:

  The DbIid of the Method to be returned

#### Returns

returns a Method object by ID.

------------------------------------------------------------------------

### Method `getAll()`

Gets a list Method objects from the BrAPI server Note the filtering
arguments are all optional and can be combined to filter the results The
value of the filters an be a single value or a vector of values

#### Usage

    Methods$getAll(
      commonCropNames = NULL,
      ontologyDbIds = NULL,
      programDbIds = NULL,
      programNames = NULL,
      scaleDbIds = NULL,
      observationVariableDbIds = NULL,
      page = 0,
      pageSize = 1000
    )

#### Arguments

- `commonCropNames`:

  The BrAPI Common Crop Name is the simple, generalized, widely accepted
  name of the organism being researched.

- `ontologyDbIds`:

  The unique identifier for an ontology definition.

- `programDbIds`:

  A BrAPI Program represents the high level organization or group who is
  responsible for conducting trials and studies.

- `programNames`:

  Use this parameter to only return results associated with the given
  program names.

- `scaleDbIds`:

  The unique identifier for a method.

- `observationVariableDbIds`:

  The unique identifier for an observation variable.

- `page`:

  The page number of results to return, starting from 0

- `pageSize`:

  The maximum number of results to return per page

#### Returns

returns a paged and filtered list of Method objects.

------------------------------------------------------------------------

### Method `create()`

Creates a Method object on the BrAPI server.

#### Usage

    Methods$create(newValue)

#### Arguments

- `newValue`:

  The new Method object to be created

------------------------------------------------------------------------

### Method [`update()`](https://rdrr.io/r/stats/update.html)

Creates a Method object on the BrAPI server.

#### Usage

    Methods$update(value)

#### Arguments

- `value`:

  The updated Method object to be sent to the server

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    Methods$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Examples

``` r
Methods$new()
#> Error in initialize(...): argument "client" is missing, with no default
```
