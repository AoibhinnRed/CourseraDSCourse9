library(datasets)
library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
    
    # Application title
    titlePanel("Chances of Old Faithful erupting"),
    
    # Sidebar with a slider input for number of bins 
    sidebarLayout(
        sidebarPanel(
            sliderInput("waitingtime",
                        "After waiting this amount of days:",
                        min = 43,
                        max = 95,
                        value = 43)
        ),
        
        # Show a plot of the generated distribution
        mainPanel(
            plotOutput("distPlot")
        )
    )
))