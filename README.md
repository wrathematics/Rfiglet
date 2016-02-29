# Rfiglet

* **Version:** 1.0-0
* **URL**: https://github.com/wrathematics/Rfiglet
* **Status:** [![Build Status](https://travis-ci.org/wrathematics/Rfiglet.png)](https://travis-ci.org/wrathematics/Rfiglet)
* **License:** [![License](http://img.shields.io/badge/license-BSD%202--Clause-orange.svg?style=flat)](http://opensource.org/licenses/BSD-2-Clause)
* **Author:** Drew Schmidt


This is an R package providing access to printing via figlet.  This is an AMAZING new feature that will REVOLUTIONIZE the way users interact with R.  Behold:

```r
Rfiglet::figlet("Fancy Printing")
#  _____                        ____       _       _   _             
# |  ___|_ _ _ __   ___ _   _  |  _ \ _ __(_)_ __ | |_(_)_ __   __ _ 
# | |_ / _` | '_ \ / __| | | | | |_) | '__| | '_ \| __| | '_ \ / _` |
# |  _| (_| | | | | (__| |_| | |  __/| |  | | | | | |_| | | | | (_| |
# |_|  \__,_|_| |_|\___|\__, | |_|   |_|  |_|_| |_|\__|_|_| |_|\__, |
#                       |___/                                  |___/  
```



## Example Usage

To use the package, just load with `library(Rfiglet)` and then
use `figlet("whatever")`.

```r
figlet("Rfiglet")
#  ____   __ _       _      _   
# |  _ \ / _(_) __ _| | ___| |_ 
# | |_) | |_| |/ _` | |/ _ \ __|
# |  _ <|  _| | (_| | |  __/ |_ 
# |_| \_\_| |_|\__, |_|\___|\__|
#              |___/  
```

Additionally, you can pass a font (see help for a full list):

```r
figlet("Rfiglet", font="gothic")
#                                      
# -__ /\     /\          ,,         ,  
#   || \,   ||   '   _   ||        ||  
#  /|| /   =||= \\  / \\ ||  _-_  =||= 
#  \||/-    ||  || || || || || \\  ||  
#   ||  \   ||  || || || || ||/    ||  
# _---_-|,  \\, \\ \\_-| \\ \\,/   \\, 
#                   /  \               
#                  '----`               

figlet("Rfiglet", font="doom")
# ______  __ _       _      _   
# | ___ \/ _(_)     | |    | |  
# | |_/ / |_ _  __ _| | ___| |_ 
# |    /|  _| |/ _` | |/ _ \ __|
# | |\ \| | | | (_| | |  __/ |_ 
# \_| \_|_| |_|\__, |_|\___|\__|
#               __/ |           
#              |___/             
```

See also the two package vignettes for more information.





## Installation

You can install the stable version from CRAN using the usual `install.packages()`:

```r
install.packages("Rfiglet")
```

The development version is maintained on GitHub, and can easily be installed by any of the packages that offer installations from GitHub:

```r
### Pick your preference
devtools::install_github("wrathematics/Rfiglet")
ghit::install_github("wrathematics/Rfiglet")
remotes::install_github("wrathematics/Rfiglet")
```



## Acknowledgements

The internal printing is handled by a modified version of the command line figlet.
