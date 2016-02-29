library(shiny)
library(Rfiglet)


shinyUI(
  pageWithSidebar(
    headerPanel("Figlet as a Service"),
    
    sidebarPanel(
      textInput("message", "Text", "gotta get drunk"),
      selectizeInput('figfont', 'Font', Rfiglet:::.__Rfiglet_fonts, "standard")
    ),
      
    mainPanel(
      tabPanel("ASCII", verbatimTextOutput("banner"))
    )
  )
)


