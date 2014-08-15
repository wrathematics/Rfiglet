library(shiny)
library(Rfiglet)


about.faas <- 
HTML("
  <p>
  This 
  <a href='http://www.rstudio.com/products/shiny/'>shiny</a> 
  app uses 
  <a href='https://github.com/wrathematics/Rfiglet'>the Rfiglet package</a>.
  The 
  <a href='https://github.com/wrathematics/Rfiglet/tree/master/inst/ShinyApps/faas'>source</a>
  for this shiny app is available in the Rfiglet package as a demo, which you
  can execute by calling: <pre>demo('faas', 'Rfiglet')</pre>
  
  <br>
  
  Hosting is generously provided by 
  <a href='https://www.shinyapps.io/'>RStudio</a>.
  </p>"
)

shinyUI(
  pageWithSidebar(
    headerPanel("Figlet as a Service"),
    
    sidebarPanel(
      textInput("message", "Place your text here", "gotta get drunk"),
      selectizeInput('figfont', 'Font', Rfiglet:::.__Rfiglet_fonts, "standard")
    ),
      
    mainPanel(
      tabsetPanel(
        tabPanel("Banner", verbatimTextOutput("banner")),
        tabPanel("About", helpText(about.faas))
      )
    )
  )
)


