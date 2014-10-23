
library(shiny)

shinyUI(fluidPage(

  titlePanel("Data Products Course Project"),

  sidebarLayout(
    
    sidebarPanel(
    
      HTML("<b>Documentation</b><br>Enter a list of comma separated numbers. They will be averaged reactively. Press \"Plot!\" to plot the values. (This was done to demonstrate deferred output.)<br><br>"),
      textInput(inputId = "textInput", label = "List of Numbers", value = "1, 2, 3, 4"),
      HTML("<br>"),      
      actionButton("plotButton", "Plot!")
      
    ),

    mainPanel(
      textOutput('textOutput'),
      plotOutput('plotOutput')
    )
    
  )
))
