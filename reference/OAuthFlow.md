# OAuthFlow Class

The OAuthFlow class handles OAuth for httr2 requests

## Details

The OAuthFlow class provides OAuth functionality for httr2 requests

## See also

Other authentication-classes: [`BaseAuth`](BaseAuth.md),
[`BasicAuth`](BasicAuth.md),
[`OAuthClientCredentials`](OAuthClientCredentials.md)

## Super class

[`BrAPI.R6::BaseAuth`](BaseAuth.md) -\> `OAuthFlow`

## Methods

### Public methods

- [`OAuthFlow$new()`](#method-OAuthFlow-new)

- [`OAuthFlow$authentication()`](#method-OAuthFlow-authentication)

- [`OAuthFlow$token()`](#method-OAuthFlow-token)

- [`OAuthFlow$clone()`](#method-OAuthFlow-clone)

------------------------------------------------------------------------

### Method `new()`

Creates a new instance of this
[R6](https://r6.r-lib.org/reference/R6Class.html) class. It is not
recommended that this object is created separately from the oauth_flow()
function See https://httr2.r-lib.org/reference/req_oauth_auth_code.html

#### Usage

    OAuthFlow$new(
      id,
      secret = NULL,
      token_url,
      name = "OAuthFlow",
      auth_url,
      scope = NULL,
      pkce = TRUE,
      auth_params = list(),
      token_params = list(),
      redirect_uri = oauth_redirect_uri()
    )

#### Arguments

- `id`:

  The client ID to be used for OAuth Authorization.

- `secret`:

  The client secret to be used for OAuth Authorization.

- `token_url`:

  The token URL to be used for OAuth Authorization.

- `name`:

  The name to be used for the OAuth client.

- `auth_url`:

  The authorization URL to be used for OAuth Authorization.

- `scope`:

  The scope to be used for OAuth Authorization.

- `pkce`:

  Whether to use PKCE (Proof Key for Code Exchange) for OAuth
  Authorization. Default is TRUE.

- `auth_params`:

  Additional authorization parameters to be used for OAuth
  Authorization.

- `token_params`:

  Additional token parameters to be used for OAuth Authorization.

- `redirect_uri`:

  The redirect URI to be used for OAuth Authorization.

------------------------------------------------------------------------

### Method `authentication()`

Provides the authentication function for httr2 requests

#### Usage

    OAuthFlow$authentication(req)

#### Arguments

- `req`:

  The httr2 request object

#### Returns

The httr2 request object with the Authorization header added

------------------------------------------------------------------------

### Method `token()`

Provides the authentication token for httr2 requests

#### Usage

    OAuthFlow$token(req)

#### Arguments

- `req`:

  The httr2 request object

#### Returns

The authentication token

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    OAuthFlow$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
