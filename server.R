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
  
  
  output$srv_numeric <- renderText({ input$obs })
  
  
  output$srv_ui_checkboxOne<- renderText({
    input$ui_checkboxOne
  })
  
  
  output$text_io <- renderText({
    input$text_input
  })
  output$text_area_io <- renderText({
    input$caption
  })
  output$action_bt_io <- renderText({
    input$action
  })
  output$action_link_io <- renderText({
    input$infoLink
  })
  
  
  
  
  
  
})
