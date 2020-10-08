################################################
#                 PRACTICA 1,                  #
#                 ERICK J. PINEDA AMÉZQUITA    #
#                 17012140                     #
################################################



library(shiny)


shinyUI(fluidPage(
  
  
  titlePanel("Old Faithful Geyser Data"),
  
  # Sidebar with a slider input for number of bins
  sidebarLayout(
    
    
    
    sidebarPanel(
      sliderInput("ui_sliderInput",
                  "Number of bins:",
                  min = 1,
                  max = 50,
                  value = 30)
      ,
      # Specification of range within an interval
      sliderInput("range", "Range:",
                  min = 1, max = 1000, value = c(200,500)),
      
      selectInput("ui_lista", "Variable:",
                  c("Cylinders",
                    "Transmission",
                    "Gears"))
      
      ,
      
      selectizeInput('ui_selectizeInput',"seleccione carros:",
                     choices = rownames(mtcars),
                     selected = "Camaro Z28",
                     multiple = TRUE),
      
      dateInput("ui_dateSimple", "Date:", value = "2012-02-29"),
      
      dateRangeInput('ui_dateSimpleMultiple',
                     label = paste('Date range input 2: range is limited,',
                                   'dd/mm/yy, language: fr, week starts on day 1 (Monday),',
                                   'separator is "-", start view is year'),
                     start = Sys.Date() - 3, end = Sys.Date() + 3,
                     min = Sys.Date() - 10, max = Sys.Date() + 10,
                     separator = " - ", format = "dd/mm/yy",
                     startview = 'year', language = 'fr', weekstart = 1
      )
      ,
      
      checkboxInput("ui_checkboxOne", "Seleccione si verdadero",value=FALSE),
      
      checkboxGroupInput("icons", "Choose icons:",
                         choiceNames =
                           list(icon("calendar"), icon("bed"),
                                icon("cog"), icon("bug")),
                         choiceValues =
                           list("calendar", "bed", "cog", "bug")
      ),
      
      radioButtons("rb", "Choose one:",
                   choiceNames = list(
                     icon("calendar"),
                     HTML("<p style='color:red;'>Red Text</p>"),
                     "Normal text"
                   ),
                   choiceValues = list(
                     "icon", "html", "text"
                   )),
      
      
      numericInput("obs", "Observations:", 10, min = 1, max = 100),
      
      
      
      
      
      
      
      textAreaInput("caption", "Caption", "Data Summary"),
      
      actionButton("action", "Button"),
      actionLink("infoLink", "Information Link", class = "btn-info")
      
      # , submitButton(text = "Reprocesar")
      
      
      
      
    )
    
    ,
    # Show a plot of the generated distribution
    mainPanel(
      #h1("Plot:"),
      #plotOutput("distPlot"),
      h1("Slider Input Sencillo:"),
      
      verbatimTextOutput("patito"),
      h1("Slider Input Rango:"),
      verbatimTextOutput("srv_rango"),
      
      h1("Select input"),
      verbatimTextOutput("srv_lista"),
      
      h1("Select input Multiple"),
      verbatimTextOutput("srv_listaMultiple"),
      
      h1("Fecha"),
      verbatimTextOutput("srv_fecha"),
      h1("Fecha Multiple"),
      verbatimTextOutput("srv_fechaMultiple"),
      
      h1("Numeric Input"),
      verbatimTextOutput("srv_numeric"),
      
      h1("Check one"),
      verbatimTextOutput("srv_ui_checkboxOne")
      
      ,
      
      h2("Texto"),
      verbatimTextOutput("text_io"),
      h2("Parrafo"),
      verbatimTextOutput("text_area_io"),
      h2("Action button"),
      verbatimTextOutput("action_bt_io"),
      h2("Action link"),
      verbatimTextOutput("action_link_io")
      
      
    )
    
    
  )
  
  
  
  
))


