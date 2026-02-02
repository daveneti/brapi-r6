# Creates an OAuth Client Credentials provider for BrAPIClient R6 Class object.

Creates an OAuth Client Credentials provider for BrAPIClient R6 Class
object.

## Usage

``` r
client_credentials(
  id,
  secret = NULL,
  token_url,
  name = NULL,
  scope = NULL,
  token_params = NULL
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

- scope:

  The scope to be used for OAuth Authorization.

- token_params:

  Additional token parameters to be used for OAuth Authorization.

## Value

A configured OAuth provider R6 Class object.

## See also

Other authentication:
[`basic_authentication()`](basic_authentication.md),
[`oauth_flow()`](oauth_flow.md)

## Examples

``` r
if (FALSE) { # \dontrun{
oauth_flow("client_id", "client_secret", "https://example.com/token")
} # }
```
