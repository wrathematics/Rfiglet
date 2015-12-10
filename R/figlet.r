#' Printing via figlet
#' 
#' Printing via figlet.  See \code{help(figletfonts)} for a list of fonts.
#' 
#' @param message 
#' String meant to be printed via figlet.
#' @param font
#' figlet font to use. 
#' @param smush 
#' logical; whether or not the kerning should be "extreme" (TRUE)
#' or "normal" (FALSE).
#' @param fit.term 
#' logical; if \code{TRUE}, then the printing will fit your
#' terminal width, and otherwise will assume 80 columns.  In gui's like
#' RStudio, this will probably do nothing. Does not work on Windows or Mac.
#' @param respect.linebreaks 
#' logical; if \code{TRUE}, then linebreaks will be
#' printed as linebreaks, and otherwise as spaces.
#'
#' @return 
#' The return is an S3-\code{figlet} object.
#' 
#' @examples
#' \dontrun{
#' library(Rfiglet)
#' figlet("abacabb")
#' }
#' 
#' @useDynLib Rfiglet R_figlet_main
#' @importFrom utils capture.output
#' 
#' @export
figlet <- function(message, font="standard", smush=TRUE, fit.term=TRUE, respect.linebreaks=FALSE)
{
  must.be(message, "character")
  must.be(font, "character")
  must.be(smush, "logical")
  must.be(fit.term, "logical")
  must.be(respect.linebreaks, "logical")
  
  mustnt.be(smush, "na")
  mustnt.be(fit.term, "na")
  mustnt.be(respect.linebreaks, "na")
  
  font <- match.arg(font, .__Rfiglet_fonts)
  
  fontdir <- tools::file_path_as_absolute(system.file("fonts", package="Rfiglet"))
  
  if (!smush) smusharg <- "-k"
  if (!respect.linebreaks) lbarg <- "-p"
  if (get.os() == "windows" || get.os() == "darwin") fit.term <- FALSE # doesn't work on Windows
  if (fit.term) termarg <- "-t"
  
  
  ### This is exactly what it looks like.
  argv <- c("./figlet", #"-c",
            if (!smush) smusharg, 
            if (fit.term) termarg, 
            if (!respect.linebreaks) lbarg,
            "-d", fontdir,
            "-f", font, 
            as.character(message))
  
  ret <- capture.output(invisible(.Call(R_figlet_main, argv, PACKAGE="Rfiglet")))
  
  class(ret) <- "figlet"
  
  return(ret)
}



#' @title Printing
#' @description Printing for \code{figlet()} 
#' @param x \code{figlet} object
#' @param ... unused
#' @name print-figlet
#' @rdname print-figlet
#' @method print figlet
#' @export
print.figlet <- function(x, ...)
{
  cat(paste(paste(x, collapse="\n"), "\n"))
  invisible()
}
