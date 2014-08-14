get.os <- function()
{
  ret <- tolower(Sys.info()["sysname"])
  names(ret) <- NULL
  
  return(ret)
}



figlet <- function(message, font="standard", smush=TRUE, fit.term=TRUE, respect.linebreaks=FALSE)
{
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
  
  font <- match.arg(font, fonts)
  
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
  
  ret <- capture.output(invisible(.Call("R_figlet_main", argv, PACKAGE="Rfiglet")))
  
  class(ret) <- "figlet"
  
  return(ret)
}



print.figlet <- function(x, ...)
{
  cat(paste(paste(x, collapse="\n"), "\n"))
  invisible()
}
