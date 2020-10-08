#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
  
  output$distPlot <- renderPlot({
    
    # generate bins based on input$bins from ui.R
    x    <- faithful[, 2] 
    ui_sliderInput <- seq(min(x), max(x), length.out = input$ui_sliderInput + 1)
    
    # draw the histogram with the specified number of bins
    hist(x, breaks = ui_sliderInput, col = 'darkgray', border = 'white')
    
  })
  
  output$patito <- renderPrint({
    input$ui_sliderInput
  })
  
  output$srv_rango <- renderPrint({
    input$range
  })
  
  output$srv_lista <- renderPrint({
    input$ui_lista
    
  })
  
  output$srv_listaMultiple <- renderPrint({
    input$ui_selectizeInput
    
  })
  
  output$srv_fecha <- renderPrint({
    input$ui_dateSimple
    
  })
  
  output$srv_fechaMultiple <- renderPrint({
    fecha <- paste(input$ui_dateSimpleMultiple[1]," to  ",input$ui_dateSimpleMultiple[2])
    fecha
  })
  
  output$srv_checkboxGroupInput <- renderPrint({
    chechGr <- paste(input$checkboxGroupInput[1]," to  ",input$checkboxGroupInput[2])
    chechGr
  })
  
  
  output$srv_numeric <- renderText({ input$ui_counts })
  
  
  output$srv_ui_checkboxOne<- renderText({
    input$ui_checkboxOne
  })
  
  
  output$srv_radioButtons<- renderText({
    input$ui_radioButtons
  })
  
  
  
  output$srv_checkboxGroupInput <- renderText({
    input$ui_checkboxGroupInput
  })
  
  output$srv_textArea <- renderText({
    input$ui_textArea
  })
  output$srv_actionButton <- renderText({
    input$ui_actionButton
  })
  output$srv_infoLink <- renderText({
    input$ui_infoLink
  })
  
  
  
  
  
  
})
