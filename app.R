library(shiny)
library(fpp3)
head(tourism)
ui <- fluidPage(
  plotOutput(outputId = "plotted_series")
)

server <- function(input, output, session) {
  output$plotted_series <- renderPlot({
    autoplot(tourism[tourism$Region == "Adelaide", ])
  })
  
}

shinyApp(ui, server)
