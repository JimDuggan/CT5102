library(shiny)
library(glue)

ui <- fluidPage(
  numericInput("input_num1","Enter Number",10),
  numericInput("input_num2","Enter Number",10),
  verbatimTextOutput("diff_msg"),
  verbatimTextOutput("div_msg")
)


server <- function(input, output, session){
  
  msg <- reactive({
    ans <- input$input_num1-input$input_num2
    glue("The difference of  {input$input_num1} and {input$input_num2} is {ans}\n")
  })
  
  output$diff_msg<- renderText({
    msg();
  })
  
  output$div_msg<- renderText({
    ans <- input$input_num1/input$input_num2
    glue("The division of {input$input_num1} and {input$input_num2} is {ans}\n")
  })
}

shinyApp(ui, server)
