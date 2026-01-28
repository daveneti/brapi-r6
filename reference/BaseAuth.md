# BaseAuth Class

The BaseAuth is a super class for all classes that provide
authentication functionality for httr2 requests

## Details

The BaseAuth is a super class for all classes that provide
authentication functionality for httr2 requests

## See also

Other authentication-classes: [`BasicAuth`](BasicAuth.md),
[`OAuthClientCredentials`](OAuthClientCredentials.md),
[`OAuthFlow`](OAuthFlow.md)

## Methods

### Public methods

- [`BaseAuth$new()`](#method-BaseAuth-new)

- [`BaseAuth$authentication()`](#method-BaseAuth-authentication)

- [`BaseAuth$token()`](#method-BaseAuth-token)

- [`BaseAuth$clone()`](#method-BaseAuth-clone)

------------------------------------------------------------------------

### Method `new()`

Creates a new instance of this
[R6](https://r6.r-lib.org/reference/R6Class.html) class. It is not
recommended that this object is created separately

#### Usage

    BaseAuth$new()

------------------------------------------------------------------------

### Method `authentication()`

Provides the authentication for httr2 requests needs to be implemented
in subclasses

#### Usage

    BaseAuth$authentication(req)

#### Arguments

- `req`:

  The httr2 request object

#### Returns

The httr2 request object with the Authorization header added

------------------------------------------------------------------------

### Method `token()`

Provides the token for httr2 requests needs to be implemented in
subclasses

#### Usage

    BaseAuth$token()

#### Returns

The token for httr2 requests

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    BaseAuth$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
