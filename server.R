library(shiny)

calculateBMI <- function(weight, heightFeet, heightInches) {
        heightInInches <- heightFeet*12.0 + heightInches
        return ((weight / (heightInInches * heightInInches)) * 703.0)
}



shinyServer( 
        function(input, output) {
                output$bmiValue <- renderText({
                        paste("BMI = ", calculateBMI(input$weight, input$heightFeet, input$heightInches))
                })
        }
)