# Ontologies Class

The Ontologies class handles calling the BraAPI server and is a wrapper
class around httr2 functionality for the Ontology entity

## Details

The Ontologies class handles calling the BraAPI server and is a wrapper
class around httr2 functionality for the Ontology entity

## Methods

### Public methods

- [`Ontologies$new()`](#method-Ontologies-new)

- [`Ontologies$get()`](#method-Ontologies-get)

- [`Ontologies$getAll()`](#method-Ontologies-getAll)

- [`Ontologies$create()`](#method-Ontologies-create)

- [`Ontologies$update()`](#method-Ontologies-update)

- [`Ontologies$clone()`](#method-Ontologies-clone)

------------------------------------------------------------------------

### Method `new()`

Creates a new instance of this
[R6](https://r6.r-lib.org/reference/R6Class.html) class. It is not
recommended that this object is created separately from the BrAPIClient

#### Usage

    Ontologies$new(client)

#### Arguments

- `client`:

  THe BrAPIClient to be used for server communication

------------------------------------------------------------------------

### Method [`get()`](https://rdrr.io/r/base/get.html)

Gets a Ontology object by DbId from the BrAPI server

#### Usage

    Ontologies$get(id)

#### Arguments

- `id`:

  The DbIid of the Ontology to be returned

#### Returns

returns a Ontology object by ID.

------------------------------------------------------------------------

### Method `getAll()`

Gets a list Ontology objects from the BrAPI server Note the filtering
arguments are all optional and can be combined to filter the results The
value of the filters an be a single value or a vector of values

#### Usage

    Ontologies$getAll(
      ontologyDbIds = NULL,
      ontologyNames = NULL,
      page = 0,
      pageSize = 1000
    )

#### Arguments

- `ontologyDbIds`:

  The unique identifier for an ontology definition.

- `ontologyNames`:

  The human readable identifier for an ontology definition.

- `page`:

  The page number of results to return, starting from 0

- `pageSize`:

  The maximum number of results to return per page

#### Returns

returns a paged and filtered list of Ontology objects.

------------------------------------------------------------------------

### Method `create()`

Creates a Ontology object on the BrAPI server.

#### Usage

    Ontologies$create(newValue)

#### Arguments

- `newValue`:

  The new Ontology object to be created

------------------------------------------------------------------------

### Method [`update()`](https://rdrr.io/r/stats/update.html)

Creates a Ontology object on the BrAPI server.

#### Usage

    Ontologies$update(value)

#### Arguments

- `value`:

  The updated Ontology object to be sent to the server

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    Ontologies$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Examples

``` r
Ontologies$new()
#> Error in initialize(...): argument "client" is missing, with no default
```
