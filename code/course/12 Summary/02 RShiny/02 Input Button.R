library(shiny)
library(ggplot2)

ui <- fluidPage(
  sliderInput(inputId = "num",
              label   = "Choose a number",
              value = 25, 
              min=1,
              max=100),
  textOutput("hello"),
  tableOutput("tab")
)

server <- function (input, output){
  output$hello <- renderText({
    paste("Hello world",input$num)
    })
  
  output$tab <- renderTable({
    print("renderTable")
    nycflights13::flights[1:input$num,1:4]
  })
  
}

shinyApp(ui = ui, server = server)
