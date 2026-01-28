# Creates an OAuth provider for BrAPIClient R6 Class object. '

Creates an OAuth provider for BrAPIClient R6 Class object. '

## Usage

``` r
oauth_flow(
  id,
  secret = NULL,
  token_url,
  name = NULL,
  auth_url = NULL,
  scope = NULL,
  pkce = TRUE,
  auth_params = NULL,
  token_params = NULL,
  redirect_uri = NULL
)
```

## Arguments

- id:

  The client ID to be used for OAuth Authorization.

- secret:

  The client secret to be used for OAuth Authorization.

- token_url:

  The token URL to be used for OAuth Authorization.

- name:

  The name to be used for the OAuth client.

- auth_url:

  The authorization URL to be used for OAuth Authorization.

- scope:

  The scope to be used for OAuth Authorization.

- pkce:

  Whether to use PKCE (Proof Key for Code Exchange) for OAuth
  Authorization. Default is TRUE.

- auth_params:

  Additional authorization parameters to be used for OAuth
  Authorization.

- token_params:

  Additional token parameters to be used for OAuth Authorization.

- redirect_uri:

  The redirect URI to be used for OAuth Authorization.

## Value

A configured OAuth provider R6 Class object.

## Examples

``` r
oauth_flow("client_id", "client_secret", "https://example.com/token", "https://example.com/auth")
#> <OAuthFlow>
#>   Inherits from: <BaseAuth>
#>   Public:
#>     authentication: function (req) 
#>     clone: function (deep = FALSE) 
#>     initialize: function (id, secret = NULL, token_url, name = "OAuthFlow", auth_url, 
#>     token: function (req) 
#>   Private:
#>     .auth_params: NULL
#>     .auth_url: NULL
#>     .client: httr2_oauth_client
#>     .pkce: TRUE
#>     .redirect_uri: NULL
#>     .scope: NULL
#>     .token_params: NULL
```
