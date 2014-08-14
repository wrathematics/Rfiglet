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
figlet(message, font="standard", smush=TRUE, fit.term=TRUE, 
       respect.linebreaks=FALSE)
\S3method{print}{figlet}(x, ...)
}
\arguments{
  \item{message}{String meant to be printed via figlet.}
  \item{font}{figlet font to use.  See details section for }
  \item{smush}{logical; whether or not the kerning should be "extreme" (TRUE)
  or "normal" (FALSE).}
  \item{fit.term}{logical; if \code{TRUE}, then the printing will fit your
  terminal width, and otherwise will assume 80 columns.  In gui's like 
  RStudio, this will probably do nothing.}
  \item{respect.linebreaks}{logical; if \code{TRUE}, then linebreaks
  will be printed as linebreaks, and otherwise as spaces.}
  \item{x}{A \code{figlet} object (output of the \code{figlet()} function).}
  \item{...}{additional arguments.}
}
\details{
  The complete list of available fonts is as follows:
\tabular{lllll}{
  3-d \tab 3x5 \tab 4max \tab 5lineoblique \tab acrobatic \cr
  alligator2 \tab alligator \tab alphabet \tab arrows \tab avatar \cr
  B1FF \tab banner3-D \tab banner3 \tab banner4 \tab banner \cr
  barbwire \tab basic \tab bell \tab bigchief \tab bigfig \cr
  big \tab binary \tab block \tab bolger \tab bright \cr
  broadway \tab bubble \tab bulbhead \tab calgphy2 \tab caligraphy \cr
  catwalk \tab chunky \tab coinstak \tab colossal \tab computer \cr
  contessa \tab contrast \tab cosmic \tab crawford \tab cyberlarge \cr
  cybermedium \tab cybersmall \tab diamond \tab digital \tab doh \cr
  doom \tab dotmatrix \tab double \tab drpepper \tab eftifont \cr
  eftipiti \tab eftirobot \tab eftitalic \tab eftiwall \tab epic \cr
  fender \tab fourtops \tab fraktur \tab fuzzy \tab goofy \cr
  gothic \tab gradient \tab graffiti \tab hex \tab hollywood \cr
  invita \tab isometric1 \tab isometric2 \tab isometric3 \tab isometric4 \cr
  italic \tab ivrit \tab jazmine \tab jerusalem \tab katakana \cr
  kban \tab keyboard \tab larry3d \tab lcd \tab lean \cr
  linux \tab lockergnome \tab madrid \tab marquee \tab mike \cr
  mini \tab mirror \tab mnemonic \tab morse \tab moscow \cr
  nancyj-fancy \tab nancyj \tab nancyj-improved \tab nancyj-underline \tab 
    nipples \cr
  ntgreek \tab o8 \tab ogre \tab oldbanner \tab os2 \cr
  pawp \tab peaks \tab pebbles \tab pepper \tab poison \cr
  puffy \tab pyramid \tab rectangles \tab rev \tab roman \cr
  rot13 \tab rounded \tab rowancap \tab rozzo \tab runic \cr
  sblood \tab script \tab serifcap \tab shadow \tab shimrod \cr
  short \tab slant \tab slide \tab slscript \tab small \cr
  smisome1 \tab smkeyboard \tab smpoison \tab smscript \tab smshadow \cr
  smslant \tab speed \tab s-relief \tab stacey \tab stampatello \cr
  standard \tab starwars \tab stellar \tab stop \tab straight \cr
  tanja \tab term \tab thick \tab thin \tab threepoint \cr
  ticks \tab ticksslant \tab tiles \tab tinker-toy \tab tombstone \cr
  trek \tab tubular \tab twopoint \tab univers \tab usaflag \cr
  weird
}
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
