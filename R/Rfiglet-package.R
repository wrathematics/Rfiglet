#' R Bindings for figlet
#' 
#' R bindings for figlet. figlet, which stands for "Frank, Ian, and Glenn's
#' LETters", is a command line utility
#' 
#' \tabular{ll}{
#'   Package: \tab Rfiglet\cr 
#'   Type: \tab Package\cr 
#'   License: \tab 2-clause BSD\cr
#' }
#' 
#' @useDynLib Rfiglet R_figlet_main
#' 
#' @importFrom utils capture.output
#' @importFrom tools file_path_as_absolute
#' 
#' @name Rfiglet-package
#' @docType package
#' @author Drew Schmidt \email{wrathematics AT gmail.com}
#' @references figlet \url{http://www.figlet.org/}
#' @keywords Package
NULL
