figlet <- function(message, font="standard", smush=TRUE, fit.term=TRUE, paragraph=FALSE)
{
  fonts <- c("banner", "big", "block", "bubble", "digital", "ivrit", "lean", 
    "mini", "mnemonic", "script", "shadow", "slant", "small", "smscript", 
    "smshadow", "smslant", "standard", "term")
  font <- match.arg(tolower(font), fonts)
  
  path <- tools::file_path_as_absolute(system.file("fonts", package="Rfiglet"))
  font <- paste(path, "/", font, ".flf", sep="")
  
  if (!smush) smusharg <- "-k"
  if (fit.term) termarg <- "-t"
  
  args <- paste(smush, fit.term)
  args <- sub(x=args, pattern="^(\\s)?", replacement="")
  
  ### This is exactly what it looks like.
  argv <- c("./figlet", #"-c",
            if (!smush) smusharg, 
            if (fit.term) termarg, 
            "-f", font, as.character(message))
  
  ret <- capture.output(invisible(.Call("R_figlet_main", argv, PACKAGE="Rfiglet")))
  
  class(ret) <- "figlet"
  
  return(ret)
}



print.figlet <- function(x, ...)
{
  cat(paste(paste(x, collapse="\n"), "\n"))
  invisible()
}
