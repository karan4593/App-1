library(shiny)
shinyUI(pageWithSidebar(
  headerPanel("Illustrating inputs"),
  sidebarPanel(
    textInput(inputId="text1", label="Input Text1"),
    textInput(inputId="text2", label="Input Text2"),
    numericInput('id1','Numeric input,labeled id1',0,min=0,max=10,step=1),
    checkboxGroupInput("id2","Checkbox",
                       
                       c("Value 1"="1",
                         "Value 2"="2",
                         "Value 3"="3"
                       )),
    dateInput("date","Date:")
    ),
  mainPanel(
    p('Output text1'),
    textOutput('text1'),
    p('Output text2'),
    textOutput('text2'),    
    h3('Illustrating outputs'),
    h4('You entered'),
    verbatimTextOutput("oid1"),
    h4('You entered'),
    verbatimTextOutput("oid2"),
    h4('You entered'),
    verbatimTextOutput("odate")
    
  )
  
))