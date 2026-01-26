This R package contains a set of R6 Classes for interacting with a BrAPI server. 

```R
# Get a BrAPI Client
brAPI <- getBrAPI("www.brapiserver.com")

# Get Studies associated with a breeding program
studies <- brAPI$studies$getAll(programName="Breeding Promgam Name")
 
# Get all Germplasm stored in the database
germplasm <- brAPI$germplasm$getAll(pageSize=5000)
```

For more information on how to use the package, see the R package documentation.

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
