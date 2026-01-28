# GermplasmAttributes Class

The GermplasmAttributes class handles calling the BraAPI server and is a
wrapper class around httr2 functionality for the GermplasmAttribute
entity

## Details

The GermplasmAttributes class handles calling the BraAPI server and is a
wrapper class around httr2 functionality for the GermplasmAttribute
entity

## Methods

### Public methods

- [`GermplasmAttributes$new()`](#method-GermplasmAttributes-new)

- [`GermplasmAttributes$get()`](#method-GermplasmAttributes-get)

- [`GermplasmAttributes$getAll()`](#method-GermplasmAttributes-getAll)

- [`GermplasmAttributes$search()`](#method-GermplasmAttributes-search)

- [`GermplasmAttributes$searchResult()`](#method-GermplasmAttributes-searchResult)

- [`GermplasmAttributes$create()`](#method-GermplasmAttributes-create)

- [`GermplasmAttributes$update()`](#method-GermplasmAttributes-update)

- [`GermplasmAttributes$clone()`](#method-GermplasmAttributes-clone)

------------------------------------------------------------------------

### Method `new()`

Creates a new instance of this
[R6](https://r6.r-lib.org/reference/R6Class.html) class. It is not
recommended that this object is created separately from the BrAPIClient

#### Usage

    GermplasmAttributes$new(client)

#### Arguments

- `client`:

  THe BrAPIClient to be used for server communication

------------------------------------------------------------------------

### Method [`get()`](https://rdrr.io/r/base/get.html)

Gets a GermplasmAttribute object by DbId from the BrAPI server

#### Usage

    GermplasmAttributes$get(id)

#### Arguments

- `id`:

  The DbIid of the GermplasmAttribute to be returned

#### Returns

returns a GermplasmAttribute object by ID.

------------------------------------------------------------------------

### Method `getAll()`

Gets a list GermplasmAttribute objects from the BrAPI server Note the
filtering arguments are all optional and can be combined to filter the
results The value of the filters an be a single value or a vector of
values

#### Usage

    GermplasmAttributes$getAll(
      germplasmDbIds = NULL,
      germplasmNames = NULL,
      commonCropNames = NULL,
      programDbIds = NULL,
      programNames = NULL,
      studyDbIds = NULL,
      studyNames = NULL,
      trialDbIds = NULL,
      trialNames = NULL,
      studyDbId = NULL,
      ontologyDbIds = NULL,
      methodDbIds = NULL,
      methodNames = NULL,
      methodPUIs = NULL,
      scaleDbIds = NULL,
      scaleNames = NULL,
      scalePUIs = NULL,
      dataTypes = NULL,
      traitClasses = NULL,
      traitDbIds = NULL,
      traitNames = NULL,
      traitPUIs = NULL,
      traitAttributes = NULL,
      traitAttributePUIs = NULL,
      traitEntities = NULL,
      traitEntityPUIs = NULL,
      attributeDbIds = NULL,
      attributeNames = NULL,
      attributePUIs = NULL,
      attributeCategories = NULL,
      page = 0,
      pageSize = 1000
    )

#### Arguments

- `germplasmDbIds`:

  List of IDs which uniquely identify germplasm to search for

- `germplasmNames`:

  List of human readable names to identify germplasm to search for

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

- `studyDbId`:

  \*\*Deprecated in v2.

- `ontologyDbIds`:

  List of ontology IDs to search for

- `methodDbIds`:

  List of methods to filter search results

- `methodNames`:

  Human readable name for the method \<br/\>MIAPPE V1.

- `methodPUIs`:

  The Permanent Unique Identifier of a Method, usually in the form of a
  URI

- `scaleDbIds`:

  The unique identifier for a Scale

- `scaleNames`:

  Name of the scale \<br/\>MIAPPE V1.

- `scalePUIs`:

  The Permanent Unique Identifier of a Scale, usually in the form of a
  URI

- `dataTypes`:

  List of scale data types to filter search results

- `traitClasses`:

  List of trait classes to filter search results

- `traitDbIds`:

  The unique identifier for a Trait

- `traitNames`:

  The human readable name of a trait \<br/\>MIAPPE V1.

- `traitPUIs`:

  The Permanent Unique Identifier of a Trait, usually in the form of a
  URI

- `traitAttributes`:

  A trait can be decomposed as "Trait" = "Entity" + "Attribute", the
  attribute is the observed feature (or characteristic) of the entity e.

- `traitAttributePUIs`:

  The Permanent Unique Identifier of a Trait Attribute, usually in the
  form of a URI \<br/\>A trait can be decomposed as "Trait" = "Entity" +
  "Attribute", the attribute is the observed feature (or characteristic)
  of the entity e.

- `traitEntities`:

  A trait can be decomposed as "Trait" = "Entity" + "Attribute", the
  entity is the part of the plant that the trait refers to e.

- `traitEntityPUIs`:

  The Permanent Unique Identifier of a Trait Entity, usually in the form
  of a URI \<br/\>A trait can be decomposed as "Trait" = "Entity" +
  "Attribute", the entity is the part of the plant that the trait refers
  to e.

- `attributeDbIds`:

  List of Germplasm Attribute IDs to search for

- `attributeNames`:

  List of human readable Germplasm Attribute names to search for

- `attributePUIs`:

  The Permanent Unique Identifier of an Attribute, usually in the form
  of a URI

- `attributeCategories`:

  General category for the attribute.

- `page`:

  The page number of results to return, starting from 0

- `pageSize`:

  The maximum number of results to return per page

#### Returns

returns a paged and filtered list of GermplasmAttribute objects.

------------------------------------------------------------------------

### Method [`search()`](https://rdrr.io/r/base/search.html)

Searches for GermplasmAttribute objects on the BrAPI server. The server
may return the paged results or a search result ID for later retrieval

#### Usage

    GermplasmAttributes$search(
      germplasmDbIds = NULL,
      germplasmNames = NULL,
      commonCropNames = NULL,
      programDbIds = NULL,
      programNames = NULL,
      studyDbIds = NULL,
      studyNames = NULL,
      trialDbIds = NULL,
      trialNames = NULL,
      studyDbId = NULL,
      ontologyDbIds = NULL,
      methodDbIds = NULL,
      methodNames = NULL,
      methodPUIs = NULL,
      scaleDbIds = NULL,
      scaleNames = NULL,
      scalePUIs = NULL,
      dataTypes = NULL,
      traitClasses = NULL,
      traitDbIds = NULL,
      traitNames = NULL,
      traitPUIs = NULL,
      traitAttributes = NULL,
      traitAttributePUIs = NULL,
      traitEntities = NULL,
      traitEntityPUIs = NULL,
      attributeDbIds = NULL,
      attributeNames = NULL,
      attributePUIs = NULL,
      attributeCategories = NULL,
      page = 0,
      pageSize = 1000
    )

#### Arguments

- `germplasmDbIds`:

  List of IDs which uniquely identify germplasm to search for

- `germplasmNames`:

  List of human readable names to identify germplasm to search for

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

- `studyDbId`:

  \*\*Deprecated in v2.

- `ontologyDbIds`:

  List of ontology IDs to search for

- `methodDbIds`:

  List of methods to filter search results

- `methodNames`:

  Human readable name for the method \<br/\>MIAPPE V1.

- `methodPUIs`:

  The Permanent Unique Identifier of a Method, usually in the form of a
  URI

- `scaleDbIds`:

  The unique identifier for a Scale

- `scaleNames`:

  Name of the scale \<br/\>MIAPPE V1.

- `scalePUIs`:

  The Permanent Unique Identifier of a Scale, usually in the form of a
  URI

- `dataTypes`:

  List of scale data types to filter search results

- `traitClasses`:

  List of trait classes to filter search results

- `traitDbIds`:

  The unique identifier for a Trait

- `traitNames`:

  The human readable name of a trait \<br/\>MIAPPE V1.

- `traitPUIs`:

  The Permanent Unique Identifier of a Trait, usually in the form of a
  URI

- `traitAttributes`:

  A trait can be decomposed as "Trait" = "Entity" + "Attribute", the
  attribute is the observed feature (or characteristic) of the entity e.

- `traitAttributePUIs`:

  The Permanent Unique Identifier of a Trait Attribute, usually in the
  form of a URI \<br/\>A trait can be decomposed as "Trait" = "Entity" +
  "Attribute", the attribute is the observed feature (or characteristic)
  of the entity e.

- `traitEntities`:

  A trait can be decomposed as "Trait" = "Entity" + "Attribute", the
  entity is the part of the plant that the trait refers to e.

- `traitEntityPUIs`:

  The Permanent Unique Identifier of a Trait Entity, usually in the form
  of a URI \<br/\>A trait can be decomposed as "Trait" = "Entity" +
  "Attribute", the entity is the part of the plant that the trait refers
  to e.

- `attributeDbIds`:

  List of Germplasm Attribute IDs to search for

- `attributeNames`:

  List of human readable Germplasm Attribute names to search for

- `attributePUIs`:

  The Permanent Unique Identifier of an Attribute, usually in the form
  of a URI

- `attributeCategories`:

  General category for the attribute. using the searchResult function

- `page`:

  The page number of results to return, starting from 0

- `pageSize`:

  The maximum number of results to return per page

#### Returns

returns the search result or an ID to the results.

Get the result of a search for GermplasmAttribute objects on the BrAPI
server. If the server returned search result ID for later retrieval, use
this function to get the results.

------------------------------------------------------------------------

### Method `searchResult()`

#### Usage

    GermplasmAttributes$searchResult(searchResultId, page = 0, pageSize = 1000)

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

Creates a GermplasmAttribute object on the BrAPI server.

#### Usage

    GermplasmAttributes$create(newValue)

#### Arguments

- `newValue`:

  The new GermplasmAttribute object to be created

------------------------------------------------------------------------

### Method [`update()`](https://rdrr.io/r/stats/update.html)

Creates a GermplasmAttribute object on the BrAPI server.

#### Usage

    GermplasmAttributes$update(value)

#### Arguments

- `value`:

  The updated GermplasmAttribute object to be sent to the server

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    GermplasmAttributes$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Examples

``` r
GermplasmAttributes$new()
#> Error in initialize(...): argument "client" is missing, with no default
```
