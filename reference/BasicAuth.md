# BasicAuth Class

The BasicAuth class handles Authorization for httr2 requests

## Details

The BasicAuth class provides basic authentication functionality for
httr2 requests

## Super class

[`BrAPI.R6::BaseAuth`](BaseAuth.md) -\> `BasicAuth`

## Methods

### Public methods

- [`BasicAuth$new()`](#method-BasicAuth-new)

- [`BasicAuth$authentication()`](#method-BasicAuth-authentication)

- [`BasicAuth$clone()`](#method-BasicAuth-clone)

Inherited methods

- [`BrAPI.R6::BaseAuth$token()`](BaseAuth.html#method-token)

------------------------------------------------------------------------

### Method `new()`

Creates a new instance of this
[R6](https://r6.r-lib.org/reference/R6Class.html) class. It is not
recommended that this object is created separately from the
basic_authentication() function

#### Usage

    BasicAuth$new(username = NULL, password = NULL)

#### Arguments

- `username`:

  The username to be used for Authorization.

- `password`:

  The password to be used for Authorization.

------------------------------------------------------------------------

### Method `authentication()`

Provides the authentication function for httr2 requests

#### Usage

    BasicAuth$authentication(req)

#### Arguments

- `req`:

  The httr2 request object

#### Returns

The httr2 request object with the Authorization header added

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    BasicAuth$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
