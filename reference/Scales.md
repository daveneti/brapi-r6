# Scales Class

The Scales class handles calling the BraAPI server and is a wrapper
class around httr2 functionality for the Scale entity

## Details

The Scales class handles calling the BraAPI server and is a wrapper
class around httr2 functionality for the Scale entity

## Methods

### Public methods

- [`Scales$new()`](#method-Scales-new)

- [`Scales$get()`](#method-Scales-get)

- [`Scales$getAll()`](#method-Scales-getAll)

- [`Scales$create()`](#method-Scales-create)

- [`Scales$update()`](#method-Scales-update)

- [`Scales$clone()`](#method-Scales-clone)

------------------------------------------------------------------------

### Method `new()`

Creates a new instance of this
[R6](https://r6.r-lib.org/reference/R6Class.html) class. It is not
recommended that this object is created separately from the BrAPIClient

#### Usage

    Scales$new(client)

#### Arguments

- `client`:

  THe BrAPIClient to be used for server communication

------------------------------------------------------------------------

### Method [`get()`](https://rdrr.io/r/base/get.html)

Gets a Scale object by DbId from the BrAPI server

#### Usage

    Scales$get(id)

#### Arguments

- `id`:

  The DbIid of the Scale to be returned

#### Returns

returns a Scale object by ID.

------------------------------------------------------------------------

### Method `getAll()`

Gets a list Scale objects from the BrAPI server Note the filtering
arguments are all optional and can be combined to filter the results The
value of the filters an be a single value or a vector of values

#### Usage

    Scales$getAll(
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

  The unique identifier for a scale.

- `observationVariableDbIds`:

  The unique identifier for an observation variable.

- `page`:

  The page number of results to return, starting from 0

- `pageSize`:

  The maximum number of results to return per page

#### Returns

returns a paged and filtered list of Scale objects.

------------------------------------------------------------------------

### Method `create()`

Creates a Scale object on the BrAPI server.

#### Usage

    Scales$create(newValue)

#### Arguments

- `newValue`:

  The new Scale object to be created

------------------------------------------------------------------------

### Method [`update()`](https://rdrr.io/r/stats/update.html)

Creates a Scale object on the BrAPI server.

#### Usage

    Scales$update(value)

#### Arguments

- `value`:

  The updated Scale object to be sent to the server

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    Scales$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Examples

``` r
Scales$new()
#> Error in initialize(...): argument "client" is missing, with no default
```
