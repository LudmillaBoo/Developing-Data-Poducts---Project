library ("shiny")


shinyUI(fluidPage(
        titlePanel("Body Mass Index Calculator"),
        h6("The BMI is a number calculated from a person's weight and height. BMI is a fairly reliable indicator of body fatness for most people."), 
        h6("It is applicable to both men and women between the ages of 18 and 65."),

        h4("To calculate your Body Mass Index:"),
        h6("Step 1) Enter your height (in feet and inches) using the numeric input boxes below."),
        h6("Step 2) Enter your weight (in pounds) using the numeric input box below."),
        h6("Step 3) Click on the 'Submit' button and your Body Mass Index will be calculated."),

        fluidPage(
                column(3,
                       h3('Your Input:'),
                       numericInput('heightFeet', 'Height (feet):', 5, min = 3, max = 7, step = 1),
                       numericInput('heightInches', 'Height (inches):', 11, min = 0, max = 11, step = 1),
                       numericInput('weight', 'Weight: (pounds)', 180, min = 50, max = 300, step = 1), 
                       submitButton('Submit')
                ), 
                column(3,
                       h3('Your Result:'),
                       textOutput("bmiValue")
                ),
                column(3,
                       h4('BMI Classification:'),
                       h5('less than 18.5 -- Underweight'),
                       h5('18.5 to 24.99 -- Normal Weight'),
                       h5('25 to 29.99 -- Overweight'),
                       h5('30 to 34.99 -- Obesity (Class 1)'),
                       h5('35 to 39.99 -- Obesity (Class 2)'),
                       h5('over 39.99 -- Morbid Obesity'), 
                       h5('For more information please visit:'),
                       h5('http://www.cdc.gov/healthyweight/assessing/bmi/adult_bmi/')
                )
        )
)
)