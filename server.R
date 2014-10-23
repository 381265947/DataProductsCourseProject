
library(shiny)

shinyServer(function(input, output) {

  numberlist <- reactive({
    text <- input$textInput;
    list <- strsplit(text, "\\s*,\\s*");
    sapply(list, as.numeric); 
  })
  
  avg <- reactive({
    mean(numberlist())
  })
  
  output$textOutput <- renderText({ 
    paste("Average:", avg());
  })

  output$plotOutput <- renderPlot({
    if(input$plotButton > 0){
      input$plotButton
      isolate({
        plot(numberlist()); 
        abline(h = avg())
      })
    }
  })

})
