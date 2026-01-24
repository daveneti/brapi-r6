This R package contains a set of R6 Classes for interacting with a BrAPI server. 

```R
# Get a BrAPI Client
brAPI <- getBrAPI("www.brapiserver.com")

# Get Studies associated with a breeding program
studies <- brAPI$studies$getAll(programName="Breeding Promgam Name", pageSize=1000)
 
# Get all Germplasm stored in the database
germplasm <- wheat$germplasm$getAll(pageSize=5000)
```
# Installation
This package can be installed directly from GitHub, using the devtools package.

```R
# Install devtools, if you haven't already
install.packages("devtools")

# Install the BrAPI package from GitHub
library(devtools)
install_github("TriticeaeToolbox/BrAPI.R")
library(BrAPI)
```

# Documentation

See the package documentation
