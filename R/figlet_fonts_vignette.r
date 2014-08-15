### Automatic Rmd vignette generation


fill_font_vignette <- function(outfile="../vignettes/figlet_fonts.Rmd", message)
{
  if (missing(message))
    message <- "Gotta get drunk" # and I sure do dread it
  
  if (file.exists(outfile))
    file.remove(outfile)
  
  file.create(outfile)
  
  
  
  header <- "
<!--
%\\VignetteEngine{knitr}
%\\VignetteIndexEntry{Figlet Fonts}
-->

<!-- auto-generated, do not edit -->


```{r, echo = FALSE, message = FALSE}
library(Rfiglet)
options(scipen = 3)
knitr::opts_chunk$set(
  comment = NA,
  error   = FALSE,
  tidy    = FALSE)
```


```{r, echo=FALSE}
library(Rfiglet)

header <- c(figlet(\"Figlet\"), figlet(\"Fonts\"))
class(header) <- \"figlet\"

header
```

*Drew Schmidt*

This vignette contains examples of all available fonts for use with
the Rfiglet package.  For a description of the package, see the
[Introducing Rfiglet](Rfiglet.html) vignette.

The body of this vignette is automatically generated via
`fill_font_vignette()` in `Rfiglet/R/figlet_fonts_vignette.r`,
together with knitr.

<br><br>

  "
  
  
  cat(file=outfile, append=FALSE, header)
  cat(file=outfile, append=TRUE, "\n")
  
  fonts <- .__Rfiglet_fonts
  
  
  example <- character(7)
  example[2] <- ""
  example[3] <- "```{r}"
  example[4] <- "library(Rfiglet)\n"
  example[6] <- "```"
  example[7] <- "\n\n"
  
  for (font in fonts)
  {
    example[1] <- paste("# Font = \"", font, "\"", sep="")
    example[5] <- paste("figlet(\"", message, "\", font=\"", font, "\")", sep="")
    
    cat(file=outfile, append=TRUE, paste(example, collapse="\n"))
    cat(file=outfile, append=TRUE, "\n")
  }
  
  
  footer <- "
<br><br><br>
![Creative Commons License](cc.png \"Creative Commons License\")

This work is licensed under a [Creative Commons Attribution 4.0 International License](http://creativecommons.org/licenses/by/4.0/)
"
  cat(file=outfile, append=TRUE, footer)
  cat(file=outfile, append=TRUE, "\n")
  
  invisible()
}

