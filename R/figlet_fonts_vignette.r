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
  
  fonts <- c(
    "3-d", "3x5", "4max", "5lineoblique", "acrobatic", "alligator2",
    "alligator", "alphabet", "arrows", "avatar", "B1FF", "banner3-D",
    "banner3", "banner4", "banner", "barbwire", "basic", "bell",
    "bigchief", "bigfig", "big", "binary", "block", "bolger", "bright",
    "broadway", "bubble", "bulbhead", "calgphy2", "caligraphy",
    "catwalk", "chunky", "coinstak", "colossal", "computer", "contessa",
    "contrast", "cosmic", "crawford", "cyberlarge", "cybermedium",
    "cybersmall", "diamond", "digital", "doh", "doom", "dotmatrix",
    "double", "drpepper", "eftifont", "eftipiti", "eftirobot",
    "eftitalic", "eftiwall", "epic", "fender", "fourtops", "fraktur",
    "fuzzy", "goofy", "gothic", "gradient", "graffiti", "hex", 
    "hollywood", "invita", "isometric1", "isometric2", "isometric3", 
    "isometric4", "italic", "ivrit", "jazmine", "jerusalem", "katakana",
    "kban", "keyboard", "larry3d", "lcd", "lean", "linux", "lockergnome",
    "madrid", "marquee", "mike", "mini", "mirror", "mnemonic", "morse",
    "moscow", "nancyj-fancy", "nancyj", "nancyj-improved",
    "nancyj-underline", "nipples", "ntgreek", "o8", "ogre", "oldbanner",
    "os2", "pawp", "peaks", "pebbles", "pepper", "poison", "puffy", 
    "pyramid", "rectangles", "rev", "roman", "rot13", "rounded", 
    "rowancap", "rozzo", "runic", "sblood", "script", "serifcap", 
    "shadow", "shimrod", "short", "slant", "slide", "slscript", "small",
    "smisome1", "smkeyboard", "smpoison", "smscript", "smshadow",
    "smslant", "speed", "s-relief", "stacey", "stampatello", "standard",
    "starwars", "stellar", "stop", "straight", "tanja", "term", "thick",
    "thin", "threepoint", "ticks", "ticksslant", "tiles", "tinker-toy",
    "tombstone", "trek", "tubular", "twopoint", "univers", "usaflag",
    "weird")
  
  
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

