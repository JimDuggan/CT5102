library(shiny)
library(glue)

ui <- fluidPage(
  numericInput("input_num1","Enter Number",10),
  numericInput("input_num2","Enter Number",10),
  textOutput("sum_msg"),
  textOutput("prod_msg")
)

server <- function(input, output, session){
  output$sum_msg<- renderText({
    ans <- input$input_num1+input$input_num2
    glue("The sum of  {input$input_num1} and {input$input_num2} is {ans}\n")
  })
  
  output$prod_msg<- renderText({
    ans <- input$input_num1*input$input_num2
    glue("The product of  {input$input_num1} and {input$input_num2} is {ans}\n")
  })
}

shinyApp(ui, server)
