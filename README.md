This R package contains a set of R6 Classes for interacting with a BrAPI server. 

# Quick Start

```R
# Get a BrAPI Client
brAPI <- getBrAPI("www.brapiserver.com")

# Get Studies associated with a breeding program
studies <- brAPI$studies$getAll(programName="Breeding Program A")

# Get Studies associated with serveral breeding programs
studies <- brAPI$studies$getAll(programNames= c("Breeding Program A", "Breeding Program A"))
 
# Get all Germplasm stored in the database, upto 5000 records
germplasm <- brAPI$germplasm$getAll(pageSize=5000)
```

For more information on how to use the package, see the R package documentation. 

# Authentication

This is a tricky topic, as BrAPI servers can use different authentication methods, so it requires special mention.
If the BrAPI server you are connecting to does not require authentication you can skip this section. If it does, read on.
You will need to know what authentication method the BrAPI server uses.

The package supports various authentication methods, but in summary the underlying httr package is used for authentication. 
There are some helper functions to help you use it. 

If the BrAPI server uses Bearer Token authentication, you can simply provide the token when creating the BrAPI client.

```R
token <- "your_bearer_token_here"
brAPI <- getBrAPI("www.brapiserver.com", authentication = token)
```
Other authentication methods require you to supply an authentication provider.

## Basic Authentication

This is the simplest method that can be supported by BrAPI servers. 

You can use the `BasicAuth` R6 class provided in the package to handle Basic Authentication. For example:

```R
auth <- basic_authentication(username = "your_username", password = "your_password")
brAPI <- getBrAPI("www.brapiserver.com", authentication = auth)
```

## Bearer Token

As mentioned above, you can simply provide the token when creating the BrAPI client.

## OAuth2.0

If the BrAPI server uses OAuth2.0 authentication, you can use the httr package to handle the OAuth2.0 flow and obtain an access token.
See https://httr2.r-lib.org/articles/oauth.html for more information on how to use httr for OAuth2.0 authentication.

In this case, you will need to create an OAuth provider. For example

```R
auth <- oauth_flow(
  id = "134a6405d4c96797f4d3",
  secret = obfuscated("VoF2g0lvmUMlaLK1LAMdEAo2Jc5oeXB73JSLJFFvwzkcoXhsVG8piP5IeoU0EFUcJV7XtiGa"),
  token_url = "https://github.com/login/oauth/access_token"
  auth_url = "https://github.com/login/oauth/authorize",
  name = "oauth-test"
)

brAPI <- getBrAPI("www.brapiserver.com", authentication = auth)
```
Depending on the OAuth2.0 flow used by the BrAPI server, may or many need the secret in the client object. for more details
see the httr documentation https://httr2.r-lib.org/articles/oauth.html. 

You can also use client credentials

```R
auth <- client_credentials(
  id = "134a6405d4c96797f4d3",
  secret = obfuscated("VoF2g0lvmUMlaLK1LAMdEAo2Jc5oeXB73JSLJFFvwzkcoXhsVG8piP5IeoU0EFUcJV7XtiGa"),
  token_url = "http://example.com/oauth/token"
)

brAPI <- getBrAPI("www.brapiserver.com", authentication = auth)
```

Other OAuth2.0 flows include
* oauth_device() uses the “device” flow which is designed for devices like TVs that don’t have an easy way to enter data. It also works well from the console.
* oauth_password() exchanges a user name and password for an access token.
* oauth_refresh() works directly with a refresh token that you already have. It’s useful for testing and automation.

# Installation
This package can be installed directly from GitHub, using the devtools package. Remember to use 
the *main* branch. The other branches are for development purposes only and do not contain the generated code.

```R
# Install devtools, if you haven't already
install.packages("devtools")

# Install the BrAPI package from GitHub
library(devtools)
install_github("davenet/brapi-r6")
```

# Documentation

See the package documentation

# Using your own BrAPI Specification

On the *main* branch package is generated using the OpenAPI specification for BrAPI with a GitHutb Action 
defined in `.github/workflows/generate.yml`.

If you want to use your own BrAPI specification, you can do so by following these steps:

1. Change the version of the BrAPI specification used, edit the `build.gradle` file in the generator directory.
Change the specificationDirectory property to the location of your BrAPI specification JSON Schema files.
2. Run the gradlew command to generate the R files.

```bash
cd generator
./gradlew generateR
```

# Development

When developing this package, you will need to regenerate the code each time the BrAPI specification changes or
each time there is a new version of the R Generator in the BrAPI Schema tools See https://github.com/plantbreeding/brapi-schema-tools

To generate R Files you need to run the gradlew command in the generator directory. 
This will create the R files in the pkg/R directory. Then you can do the usually package build and check steps.

```bash
cd generator
./gradlew generateR
```
To change the version of the BrAPI Schema tools used in the generator, 
edit the `build.gradle` file in the generator directory. Change the brapiSchemaToolsVersion property
to the desired version.

To change the version of the BrAPI specification used, edit the `build.gradle` file in the generator directory.
Change the specificationDirectory property to the location of your BrAPI specification JSON Schema files.

To build and check the package, you can use the devtools package in R.

```R
library(devtools)
setwd("pkg")
devtools::document()
devtools::build()
devtools::check()
```

# License

This package is licensed under the MIT License. See the LICENSE file for details.
