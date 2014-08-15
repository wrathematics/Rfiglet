library(shiny)
library(Rfiglet)


shinyServer(
  function(input, output)
  {
    output$banner <- renderPrint(figlet(input$message, font=input$figfont))
  }
)

