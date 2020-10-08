################################################
#                 PRACTICA 1,                  #
#                 ERICK J. PINEDA AMÉZQUITA    #
#                 17012140                     #
################################################


library(shiny)
library(shinythemes)


shinyUI(fluidPage(theme = shinytheme("cerulean"),
  
  
  titlePanel("---- Erick J. Pineda Amézquita ---- "),
  h3("Ojo: Tiene activo el boton de Reprocesar, hacer click para ver resultados"),
  ### Comentar en caso se desea dejar fluir la pagina ###
  submitButton(text = "Reprocesar"),
  
  sidebarLayout(

    sidebarPanel(
      sliderInput("ui_sliderInput",
                  "Number of bins:",
                  min = 1,
                  max = 50,
                  value = 30, animate = TRUE)
      ,
      
      
      ##Rango
      sliderInput("range", "Range:",
                  min = 1, max = 1000, value = c(200,500)),
      
      br(),
      selectInput("ui_lista", "Lista desplegable:",
                  c("Galaxias",
                    "Planetas",
                    "Estrellas"))
      
      ,
      br(),
      selectizeInput('ui_selectizeInput',"Seleccione modelos carros:",
                     choices = rownames(mtcars),
                     selected = "Camaro Z28",
                     multiple = TRUE),
      
      br(),br(),br(),
      dateInput("ui_dateSimple", "Ingresar Fecha:", value = "2012-03-19"),
      
      dateRangeInput('ui_dateSimpleMultiple',
                     label = paste('Escoger un rango de fechas, tomar en cuenta
                                   que tiene hasta 15 dias'),
                     start = Sys.Date() - 3, end = Sys.Date() + 3,
                     min = Sys.Date() - 10, max = Sys.Date() + 10,
                     separator = " - ", format = "dd/mm/yy",
                     startview = 'year', language = 'fr', weekstart = 1
      )
      ,
      br(),br(),
      numericInput("ui_counts", "Conteo de unidades:", 10, min = 1, max = 100),
      
      
      br(),br(),
      checkboxInput("ui_checkboxOne", "Seleccione si verdadero",value=FALSE),
      br(),br(),
      
      checkboxGroupInput("ui_checkboxGroupInput", "Selecciona uno o mas items del listado:",
                         choiceNames =
                           list(icon("cog"), icon("bug"),icon("camera"),icon("at"),
                                icon("bell"), icon("bed")),
                         choiceValues =
                           list("cog", "bug", "camera", "at","bell","bed")
      ),
      br(),
      radioButtons("ui_radioButtons", "Seleccione un objeto:",
                   choiceNames = list(
                     icon("calendar"),
                     HTML("<p style='color:blue;'>Texto con formato HTML</p>"),
                     "Texto normal"
                   ),
                   choiceValues = list(
                     "Solo Icono", "Con HTML", "Texto Plano"
                   )),
      
   
      
      
      
      
      textAreaInput("ui_textArea", "Caption", "Ingresar contenido de la investigacion"),
      br(),
      actionButton("ui_actionButton", "Sumar +1"),
      br(),br(),br(),br(),br(),
      actionLink("ui_infoLink", "Ingresar a pagina por URL", class = "btn-info"),
      br(),br(),
      submitButton(text = "Reprocesar")
      
      
      
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
      h1("Validar Verdadero"),
      verbatimTextOutput("srv_ui_checkboxOne")
      ,
      h2("Grupo de checks"),
      verbatimTextOutput("srv_checkboxGroupInput"),
      br(),br(),br(),br(),br(),br(),
      h1("Radio Buttons"),
      verbatimTextOutput("srv_radioButtons"),
      
      h2("Parrafo"),
      verbatimTextOutput("srv_textArea"),
      h2("Cantidad de clicks en boton"),
      verbatimTextOutput("srv_actionButton"),
      h2("Cantidad de clicks en Link"),
      verbatimTextOutput("srv_infoLink")
      
      
    )
    
    
  )
  
  
  
  
))


