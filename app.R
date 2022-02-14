library(shiny)
library(fpp3)
head(tourism)
ui <- fluidPage(
  plotOutput(outputId = "plotted_series"),

  selectInput(
    inputID = "selected_purpose",
    label = "Select Purpose",
    choices = c("Business", "Holiday", "Other", "Visiting")
  ),
  plotOutput("t_plot")
)

server <- function(input, output, session) {
  output$plotted_series <- renderPlot({
    autoplot(tourism[tourism$Region == "Adelaide", ])
  })
}


shinyApp(ui, server)
