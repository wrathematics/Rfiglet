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
  \item{font}{figlet font to use.}
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
  TODO
}
\value{
  TODO
}
\examples{
\dontrun{
library(Rfiglet)
figlet("abacabb")
}
}
