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
#' @export
figlet <- function(message, font="standard", smush=TRUE, respect.linebreaks=FALSE)
{
  must.be(message, "character")
  must.be(font, "character")
  must.be(smush, "logical")
  must.be(respect.linebreaks, "logical")
  
  mustnt.be(smush, "na")
  mustnt.be(respect.linebreaks, "na")
  
  font <- match.arg(font, .__Rfiglet_fonts)
  
  fontdir <- tools::file_path_as_absolute(system.file("fonts", package="Rfiglet"))
  
  if (!smush) smusharg <- "-k"
  if (!respect.linebreaks) lbarg <- "-p"
  
  
  ### This is exactly what it looks like.
  argv <- c("./figlet", #"-c",
            if (!smush) smusharg, 
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
