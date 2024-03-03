# =======================
# Lab 1
# =======================
library(shiny)
library(bslib)
library(tidyverse)
library(shinydashboard)


ui <- dashboardPage(
    dashboardHeader(title = "Lab 1"),
    dashboardSidebar(
        checkboxInput("checkbox1", label = h4("Show Graph"), value = TRUE),
        numericInput("num1", label = h4("Enter a number"), value = 1),
        radioButtons("select1", label = h4("Select a color"), choices = list("Blue" = "cyanblue2", "Purple" = "darkorchid3", "Pink" = "deeppink", "Green" = "lawngreen"), selected = "deeppink")
        ),
    dashboardBody(
        plotOutput("plot1")
    )
)

server <- function(input, output) {
    output$plot1 <- renderPlot({
        # color selection
        color = input$select1

        # number of points
        number = input$num1
        # make a sequence of numbers, from 1 to the number selected, by 1
        numbers <- seq(1, number, 1)
        # create an empty vector to hold y values as they're generated
        y <- c()
        # for each number in the sequence
        for (i in numbers) {
            # generate a random number between 1 and the number selected, and use it as the y value for the current number in the sequence
            y[i] = sample(1:number, 1, replace = TRUE)
        }

        # create a data frame with the number sequence and the generated y values
        numbers_df <- data.frame(numbers, y)
        # plot the data frame
        plot1 <- ggplot(numbers_df, aes(x = numbers, y = y)) +
        # make the graph a point plot, make the points a little bigger, and set the color to the color selected
        geom_point(size = 3, color = color) +
        # make the plot easier to read
        theme_minimal() +
        # add a title
        labs(title = "Plot of Input #1")

        # only show the plot if the checkbox is selected
        if (input$checkbox1) {
            plot1
        }
    })

}

shinyApp(ui = ui, server = server)