figlet <- function(message, font="standard")
{
  fonts <- c("banner", "big", "block", "bubble", "digital", "ivrit", "lean", "mini", "mnemonic", "script", "shadow", "slant", "small", "smscript", "smshadow", "smslant", "standard", "term")
  font <- match.arg(tolower(font), fonts)
  
  path <- tools::file_path_as_absolute(system.file("fonts", package="Rfiglet"))
  font <- paste(path, "/", font, ".flf", sep="")
  
  
  ### This is exactly what it looks like.
  argv <- c(
    "./figlet",
    "-f", font,
    as.character(message)
  )
  
  .Call("R_figlet_main", argv, PACKAGE="Rfiglet")
  
  invisible()
}

