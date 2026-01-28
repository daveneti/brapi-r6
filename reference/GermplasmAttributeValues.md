# GermplasmAttributeValues Class

The GermplasmAttributeValues class handles calling the BraAPI server and
is a wrapper class around httr2 functionality for the
GermplasmAttributeValue entity

## Details

The GermplasmAttributeValues class handles calling the BraAPI server and
is a wrapper class around httr2 functionality for the
GermplasmAttributeValue entity

## Methods

### Public methods

- [`GermplasmAttributeValues$new()`](#method-GermplasmAttributeValues-new)

- [`GermplasmAttributeValues$get()`](#method-GermplasmAttributeValues-get)

- [`GermplasmAttributeValues$getAll()`](#method-GermplasmAttributeValues-getAll)

- [`GermplasmAttributeValues$search()`](#method-GermplasmAttributeValues-search)

- [`GermplasmAttributeValues$searchResult()`](#method-GermplasmAttributeValues-searchResult)

- [`GermplasmAttributeValues$create()`](#method-GermplasmAttributeValues-create)

- [`GermplasmAttributeValues$update()`](#method-GermplasmAttributeValues-update)

- [`GermplasmAttributeValues$clone()`](#method-GermplasmAttributeValues-clone)

------------------------------------------------------------------------

### Method `new()`

Creates a new instance of this
[R6](https://r6.r-lib.org/reference/R6Class.html) class. It is not
recommended that this object is created separately from the BrAPIClient

#### Usage

    GermplasmAttributeValues$new(client)

#### Arguments

- `client`:

  THe BrAPIClient to be used for server communication

------------------------------------------------------------------------

### Method [`get()`](https://rdrr.io/r/base/get.html)

Gets a GermplasmAttributeValue object by DbId from the BrAPI server

#### Usage

    GermplasmAttributeValues$get(id)

#### Arguments

- `id`:

  The DbIid of the GermplasmAttributeValue to be returned

#### Returns

returns a GermplasmAttributeValue object by ID.

------------------------------------------------------------------------

### Method `getAll()`

Gets a list GermplasmAttributeValue objects from the BrAPI server Note
the filtering arguments are all optional and can be combined to filter
the results The value of the filters an be a single value or a vector of
values

#### Usage

    GermplasmAttributeValues$getAll(
      commonCropNames = NULL,
      germplasmDbIds = NULL,
      germplasmNames = NULL,
      programDbIds = NULL,
      programNames = NULL,
      attributeValueDbIds = NULL,
      attributeDbIds = NULL,
      attributeNames = NULL,
      ontologyDbIds = NULL,
      methodDbIds = NULL,
      scaleDbIds = NULL,
      traitDbIds = NULL,
      traitClasses = NULL,
      dataTypes = NULL,
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

- `attributeValueDbIds`:

  List of Germplasm Attribute Value IDs to search for

- `attributeDbIds`:

  List of Germplasm Attribute IDs to search for

- `attributeNames`:

  List of human readable Germplasm Attribute names to search for

- `ontologyDbIds`:

  List of ontology IDs to search for

- `methodDbIds`:

  List of methods to filter search results

- `scaleDbIds`:

  List of scales to filter search results

- `traitDbIds`:

  List of trait unique ID to filter search results

- `traitClasses`:

  List of trait classes to filter search results

- `dataTypes`:

  List of scale data types to filter search results

- `page`:

  The page number of results to return, starting from 0

- `pageSize`:

  The maximum number of results to return per page

#### Returns

returns a paged and filtered list of GermplasmAttributeValue objects.

------------------------------------------------------------------------

### Method [`search()`](https://rdrr.io/r/base/search.html)

Searches for GermplasmAttributeValue objects on the BrAPI server. The
server may return the paged results or a search result ID for later
retrieval

#### Usage

    GermplasmAttributeValues$search(
      commonCropNames = NULL,
      germplasmDbIds = NULL,
      germplasmNames = NULL,
      programDbIds = NULL,
      programNames = NULL,
      attributeValueDbIds = NULL,
      attributeDbIds = NULL,
      attributeNames = NULL,
      ontologyDbIds = NULL,
      methodDbIds = NULL,
      scaleDbIds = NULL,
      traitDbIds = NULL,
      traitClasses = NULL,
      dataTypes = NULL,
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

- `attributeValueDbIds`:

  List of Germplasm Attribute Value IDs to search for

- `attributeDbIds`:

  List of Germplasm Attribute IDs to search for

- `attributeNames`:

  List of human readable Germplasm Attribute names to search for

- `ontologyDbIds`:

  List of ontology IDs to search for

- `methodDbIds`:

  List of methods to filter search results

- `scaleDbIds`:

  List of scales to filter search results

- `traitDbIds`:

  List of trait unique ID to filter search results

- `traitClasses`:

  List of trait classes to filter search results

- `dataTypes`:

  List of scale data types to filter search results using the
  searchResult function

- `page`:

  The page number of results to return, starting from 0

- `pageSize`:

  The maximum number of results to return per page

#### Returns

returns the search result or an ID to the results.

Get the result of a search for GermplasmAttributeValue objects on the
BrAPI server. If the server returned search result ID for later
retrieval, use this function to get the results.

------------------------------------------------------------------------

### Method `searchResult()`

#### Usage

    GermplasmAttributeValues$searchResult(
      searchResultId,
      page = 0,
      pageSize = 1000
    )

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

### Method `create()`

Creates a GermplasmAttributeValue object on the BrAPI server.

#### Usage

    GermplasmAttributeValues$create(newValue)

#### Arguments

- `newValue`:

  The new GermplasmAttributeValue object to be created

------------------------------------------------------------------------

### Method [`update()`](https://rdrr.io/r/stats/update.html)

Creates a GermplasmAttributeValue object on the BrAPI server.

#### Usage

    GermplasmAttributeValues$update(value)

#### Arguments

- `value`:

  The updated GermplasmAttributeValue object to be sent to the server

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    GermplasmAttributeValues$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Examples

``` r
GermplasmAttributeValues$new()
#> Error in initialize(...): argument "client" is missing, with no default
```
