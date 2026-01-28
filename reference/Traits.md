# Traits Class

The Traits class handles calling the BraAPI server and is a wrapper
class around httr2 functionality for the Trait entity

## Details

The Traits class handles calling the BraAPI server and is a wrapper
class around httr2 functionality for the Trait entity

## Methods

### Public methods

- [`Traits$new()`](#method-Traits-new)

- [`Traits$get()`](#method-Traits-get)

- [`Traits$getAll()`](#method-Traits-getAll)

- [`Traits$create()`](#method-Traits-create)

- [`Traits$update()`](#method-Traits-update)

- [`Traits$clone()`](#method-Traits-clone)

------------------------------------------------------------------------

### Method `new()`

Creates a new instance of this
[R6](https://r6.r-lib.org/reference/R6Class.html) class. It is not
recommended that this object is created separately from the BrAPIClient

#### Usage

    Traits$new(client)

#### Arguments

- `client`:

  THe BrAPIClient to be used for server communication

------------------------------------------------------------------------

### Method [`get()`](https://rdrr.io/r/base/get.html)

Gets a Trait object by DbId from the BrAPI server

#### Usage

    Traits$get(id)

#### Arguments

- `id`:

  The DbIid of the Trait to be returned

#### Returns

returns a Trait object by ID.

------------------------------------------------------------------------

### Method `getAll()`

Gets a list Trait objects from the BrAPI server Note the filtering
arguments are all optional and can be combined to filter the results The
value of the filters an be a single value or a vector of values

#### Usage

    Traits$getAll(
      commonCropNames = NULL,
      ontologyDbIds = NULL,
      programDbIds = NULL,
      programNames = NULL,
      traitDbIds = NULL,
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

- `traitDbIds`:

  The unique identifier for a trait.

- `observationVariableDbIds`:

  The unique identifier for an observation variable.

- `page`:

  The page number of results to return, starting from 0

- `pageSize`:

  The maximum number of results to return per page

#### Returns

returns a paged and filtered list of Trait objects.

------------------------------------------------------------------------

### Method `create()`

Creates a Trait object on the BrAPI server.

#### Usage

    Traits$create(newValue)

#### Arguments

- `newValue`:

  The new Trait object to be created

------------------------------------------------------------------------

### Method [`update()`](https://rdrr.io/r/stats/update.html)

Creates a Trait object on the BrAPI server.

#### Usage

    Traits$update(value)

#### Arguments

- `value`:

  The updated Trait object to be sent to the server

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    Traits$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Examples

``` r
Traits$new()
#> Error in initialize(...): argument "client" is missing, with no default
```
