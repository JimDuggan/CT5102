ui <- fluidPage(
  titlePanel("My Shiny App"),
  sidebarLayout(
    sidebarPanel(h1("Hello")),
    mainPanel(
      h1("First level title"),
      p("This is a paragraph of text"),
      strong("This is bold text"),
      br(),
      h2("Second level title"),
      img(src="RStudio.jpg")
    )
  )
)

server <- function(input, output){
  
}

shinyApp(ui = ui, server=server)