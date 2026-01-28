# Creates a Authorization provider for BrAPIClient R6 Class object.

Creates a Authorization provider for BrAPIClient R6 Class object.

## Usage

``` r
basic_authentication(username = guess_username(), password = NULL)
```

## Arguments

- username:

  The username to be used for Authorization. If NULL it will attempt to
  guess the username from the system.

- password:

  The password to be used for Authorization. If NULL it will prompt for
  the password.

## Value

A configured Authorization provider R6 Class object.

## Examples

``` r
basic_authentication("usernamre", "password")
#> <BasicAuth>
#>   Inherits from: <BaseAuth>
#>   Public:
#>     authentication: function (req) 
#>     clone: function (deep = FALSE) 
#>     initialize: function (username = NULL, password = NULL) 
#>     token: function () 
#>   Private:
#>     .password: password
#>     .username: usernamre
```
