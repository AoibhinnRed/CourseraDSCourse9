library(shiny)

shinyServer(function(input, output) {
    
    data("faithful")

    output$distPlot <- renderPlot({
        
        waiting <- faithful$waiting
        eruptions <- faithful$eruptions
        yas <- eruptions[waiting>input$waitingtime]
        
        # plot histogram of the amount of eruptions seen after X amount of days
        hist(yas, breaks=10,col = 'yellow', border = 'black', xlab = "Number of eruptions", ylab = "Number of observations", main = "Past amount of eruptions of Old Faithful after X amount of days")
    })
    
})