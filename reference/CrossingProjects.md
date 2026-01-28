# CrossingProjects Class

The CrossingProjects class handles calling the BraAPI server and is a
wrapper class around httr2 functionality for the CrossingProject entity

## Details

The CrossingProjects class handles calling the BraAPI server and is a
wrapper class around httr2 functionality for the CrossingProject entity

## Methods

### Public methods

- [`CrossingProjects$new()`](#method-CrossingProjects-new)

- [`CrossingProjects$get()`](#method-CrossingProjects-get)

- [`CrossingProjects$getAll()`](#method-CrossingProjects-getAll)

- [`CrossingProjects$create()`](#method-CrossingProjects-create)

- [`CrossingProjects$update()`](#method-CrossingProjects-update)

- [`CrossingProjects$clone()`](#method-CrossingProjects-clone)

------------------------------------------------------------------------

### Method `new()`

Creates a new instance of this
[R6](https://r6.r-lib.org/reference/R6Class.html) class. It is not
recommended that this object is created separately from the BrAPIClient

#### Usage

    CrossingProjects$new(client)

#### Arguments

- `client`:

  THe BrAPIClient to be used for server communication

------------------------------------------------------------------------

### Method [`get()`](https://rdrr.io/r/base/get.html)

Gets a CrossingProject object by DbId from the BrAPI server

#### Usage

    CrossingProjects$get(id)

#### Arguments

- `id`:

  The DbIid of the CrossingProject to be returned

#### Returns

returns a CrossingProject object by ID.

------------------------------------------------------------------------

### Method `getAll()`

Gets a list CrossingProject objects from the BrAPI server Note the
filtering arguments are all optional and can be combined to filter the
results The value of the filters an be a single value or a vector of
values

#### Usage

    CrossingProjects$getAll(
      commonCropNames = NULL,
      programDbIds = NULL,
      programNames = NULL,
      crossingProjectDbIds = NULL,
      crossingProjectNames = NULL,
      includePotentialParents = NULL,
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

- `crossingProjectDbIds`:

  Search for Crossing Projects with this unique id

- `crossingProjectNames`:

  The human readable name for a crossing project

- `includePotentialParents`:

  If the parameter 'includePotentialParents' is false, the array
  'potentialParents' should be empty, null, or excluded from the
  response object.

- `page`:

  The page number of results to return, starting from 0

- `pageSize`:

  The maximum number of results to return per page

#### Returns

returns a paged and filtered list of CrossingProject objects.

------------------------------------------------------------------------

### Method `create()`

Creates a CrossingProject object on the BrAPI server.

#### Usage

    CrossingProjects$create(newValue)

#### Arguments

- `newValue`:

  The new CrossingProject object to be created

------------------------------------------------------------------------

### Method [`update()`](https://rdrr.io/r/stats/update.html)

Creates a CrossingProject object on the BrAPI server.

#### Usage

    CrossingProjects$update(value)

#### Arguments

- `value`:

  The updated CrossingProject object to be sent to the server

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    CrossingProjects$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Examples

``` r
CrossingProjects$new()
#> Error in initialize(...): argument "client" is missing, with no default
```
