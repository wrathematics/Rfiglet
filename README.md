What is this?
====================================================================
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



How do I install it?
====================================================================
To install the package from github, I recommend using Hadley Wickham's
devtools package, which you can get from the CRAN.  After installing that,
you can enter

```r
library(devtools)
devtools::install_github("wrathematics/Rfiglet")
```

into an R terminal to install this package.



Software license and disclaimer
====================================================================
This package is licensed under the permissive 2-clause BSD license.
You can find a quick summary of the license here:

https://tldrlegal.com/license/bsd-2-clause-license-%28freebsd%29

The full terms of the license (it's very short) are contained in the
LICENSE file in the root directory of the project.

figlet itself is licensed under the 3-clause BSD license.  You can
find a copy of this license in `Rfiglet/inst/figlet_LICENSE` and
`Rfiglet/src/figlet/LICENSE`.

