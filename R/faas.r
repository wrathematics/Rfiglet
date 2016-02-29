#' Figlet as a Service
#' 
#' Run the bundled shiny app wrapping Rfiglet.  Note: requires the 
#' shiny package.
#'
#' @export
faas <- function()
{
  shiny::runApp(file.path(system.file("faas", package="Rfiglet")))
}

