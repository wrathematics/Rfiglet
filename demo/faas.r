library(shiny)

faas <- tools::file_path_as_absolute(system.file("ShinyApps/faas", package="Rfiglet"))
runApp(faas)
