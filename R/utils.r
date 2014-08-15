get.os <- function()
{
  ret <- tolower(Sys.info()["sysname"])
  names(ret) <- NULL
  
  return(ret)
}



### error checking for the lazy man
must.be <- function(x, type)
{
  Rstuff <- c("character", "numeric", "integer", "double", "logical", "matrix", "data.frame", "vector")
  type <- match.arg(type, Rstuff)
  
  nm <- deparse(substitute(x))
  
  fun <- eval(parse(text=paste("is.", type, sep="")))
  
  if (!fun(x))
    stop(paste("argument '", nm, "' must be of type ", type, sep=""), call.=FALSE)
  
  invisible(TRUE)
}



mustnt.be <- function(x, special)
{
  Rstuff <- c("null", "na")
  type <- match.arg(special, Rstuff)
  
  nm <- deparse(substitute(x))
  
  fun <- eval(parse(text=paste("is.", type, sep="")))
  
  if (fun(x))
    stop(paste("argument '", nm, "' may not be ", toupper(type), sep=""), call.=FALSE)
  
  invisible(TRUE)
}

