\name{figlet}
\docType{methods}

\alias{figlet}

\alias{print.figlet}
\alias{print}


\title{Printing via figlet}
\description{
  Printing via figlet.
}
\section{Methods}{
\describe{
  \item{\code{signature(x = "figlet")}}{}
}
}
\usage{
figlet(message, font="standard", smush=TRUE, fit.term=TRUE, paragraph=FALSE)
\S3method{print}{figlet}(x, ...)
}
\arguments{
  \item{message}{String meant to be printed via figlet.}
  \item{font}{figlet font to use.  See details section for }
  \item{smush}{logical; whether or not the kerning should be "extreme" (TRUE)
  or "normal" (FALSE).}
  \item{paragraph}{TODO}
  \item{fit.term}{logical; if \code{TRUE}, then the printing will fit your
  terminal width, and otherwise will assume 80 columns.  In gui's like 
  RStudio, this will probably do nothing.}
  \item{x}{A \code{figlet} object (output of the \code{figlet()} function).}
  \item{...}{additional arguments.}
}
\details{
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
"fuzzy", "goofy"," gothic", "gradient", "graffiti", "hex", 
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
"weird"
}
\value{
  The return is an S3-\code{figlet} object.
}
\examples{
\dontrun{
library(Rfiglet)
figlet("abacabb")
}
}
