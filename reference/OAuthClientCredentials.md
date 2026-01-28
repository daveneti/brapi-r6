# OAuthClientCredentials Class

The OAuthClientCredentials class handles OAuth Client Credentials for
httr2 requests

## Details

The OAuthClientCredentials class provides OAuth Client Credentials
functionality for httr2 requests

## Super class

[`BrAPI.R6::BaseAuth`](BaseAuth.md) -\> `OAuthClientCredentials`

## Methods

### Public methods

- [`OAuthClientCredentials$new()`](#method-OAuthClientCredentials-new)

- [`OAuthClientCredentials$authentication()`](#method-OAuthClientCredentials-authentication)

- [`OAuthClientCredentials$token()`](#method-OAuthClientCredentials-token)

- [`OAuthClientCredentials$clone()`](#method-OAuthClientCredentials-clone)

------------------------------------------------------------------------

### Method `new()`

Creates a new instance of this
[R6](https://r6.r-lib.org/reference/R6Class.html) class. It is not
recommended that this object is created separately from the
client_credentials() function See
https://httr2.r-lib.org/reference/req_oauth_auth_code.html

#### Usage

    OAuthClientCredentials$new(
      id,
      secret = NULL,
      token_url,
      name = "OAuthClientCredentials",
      scope = NULL,
      token_params = list()
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

- `scope`:

  The scope to be used for OAuth Authorization.

- `token_params`:

  Additional token parameters to be used for OAuth Authorization.

------------------------------------------------------------------------

### Method `authentication()`

Provides the authentication token for httr2 requests

#### Usage

    OAuthClientCredentials$authentication(req)

#### Arguments

- `req`:

  The httr2 request object

#### Returns

The httr2 request object with the Authorization header added

------------------------------------------------------------------------

### Method `token()`

Provides the authentication function for httr2 requests

#### Usage

    OAuthClientCredentials$token()

#### Returns

The authentication token

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    OAuthClientCredentials$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
