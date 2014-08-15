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
  if (get.os() == "windows") fit.term <- FALSE # doesn't work on Windows
  if (fit.term) termarg <- "-t"
  
  
  ### This is exactly what it looks like.
  argv <- c("./figlet", #"-c",
            if (!smush) smusharg, 
            if (fit.term) termarg, 
            if (!respect.linebreaks) lbarg,
            "-d", fontdir,
            "-f", font, 
            as.character(message))
  
  ret <- capture.output(invisible(.Call("R_figlet_main", argv, PACKAGE="Rfiglet")))
  
  class(ret) <- "figlet"
  
  return(ret)
}



print.figlet <- function(x, ...)
{
  cat(paste(paste(x, collapse="\n"), "\n"))
  invisible()
}
