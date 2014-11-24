# Rfiglet

This is an R package providing access to printing via figlet.  This
is an AMAZING new feature that will REVOLUTIONIZE the way users
interact with R.  Behold:

```r
library(Rfiglet)
figlet("Fancy Printing")
#  _____                        ____       _       _   _             
# |  ___|_ _ _ __   ___ _   _  |  _ \ _ __(_)_ __ | |_(_)_ __   __ _ 
# | |_ / _` | '_ \ / __| | | | | |_) | '__| | '_ \| __| | '_ \ / _` |
# |  _| (_| | | | | (__| |_| | |  __/| |  | | | | | |_| | | | | (_| |
# |_|  \__,_|_| |_|\___|\__, | |_|   |_|  |_|_| |_|\__|_|_| |_|\__, |
#                       |___/                                  |___/  
```


## Package Usage

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

To install the package from github, I recommend using Hadley Wickham's
devtools package, which you can get from the CRAN.  After installing that,
you can enter

```r
devtools::install_github("wrathematics/Rfiglet")
```

into an R terminal to install this package.



## Software license and disclaimer

This package is licensed under the permissive 2-clause BSD license.
You can find a quick summary of the license here:

https://tldrlegal.com/license/bsd-2-clause-license-%28freebsd%29

The full terms of the license (it's very short) are contained in the
LICENSE file in the root directory of the project.

figlet itself is licensed under the 3-clause BSD license.  You can
find a copy of this license in `Rfiglet/inst/figlet_LICENSE` and
`Rfiglet/src/figlet/LICENSE`.

