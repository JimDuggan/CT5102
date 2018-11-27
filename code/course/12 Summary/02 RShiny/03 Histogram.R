library(shiny)
library(ggplot2)
library(readr)
library(dplyr)

ui <- fluidPage(
  radioButtons(inputId = "gender",
              label   = "Select Gender",
              c("Male","Female")),
  plotOutput("hist"),          # to plot a chart
  tableOutput("tab"),          # to generate a table
  verbatimTextOutput("text")   # to generate some text
)

server <- function (input, output){
  output$hist <- renderPlot({
    ggplot(filter(d,Gender==input$gender), aes(Height)) + 
      geom_histogram(binwidth = 1) + ggtitle(input$gender)
    })
  
  output$tab <- renderTable({
    sd <- filter(d,Gender==input$gender) %>% group_by(Gender) %>% 
      summarise(Mean=mean(Height),
                Median=median(Height),
                SDev=sd(Height),
                Number=n()
      )
  })
  
  output$text <- renderPrint({
    cat("Input Selection = ", input$gender,"\n")
  })
}

d <- read_csv("HopeCollegeHeights.csv")

d <- d %>% mutate(Gender=as.factor(ifelse(Gender==1,"Female","Male")))

shinyApp(ui = ui, server = server)
