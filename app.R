#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
source("visualize.R")

# Define UI for application that draws a histogram
ui <- fixedPage(
    # CSS
    tags$head(
        tags$link(rel = "stylesheet", type = "text/css", href = "bootstrap.min.css"),
        tags$link(rel = "stylesheet", type = "text/css", href = "custom.css")
    ),
    
    fixedRow(
        column(4,
            tags$div(class="explainer",
                     img(src="https://algorit.ma/wp-content/uploads/2017/10/dvr-666x705.png", width="200px"),
                     h3("WebGuard Monitoring System"),
                     p("WebGuard is powered by AlienVault's IP Reputation and scoring database. Its intended use is to 
                  aid the cybersecurity analysts in the company to identify potential threats from incoming traffic
                  and mitigate any possible risks.")
            )

        ),
        column(7, offset=1,
               plotOutput("showPlot1") 
        )
    ),
    
    hr(),
    
    fixedRow(
        column(10, offset=1,
            # table  
            dataTableOutput("showTable1")
        )
    )


)

# Define server logic required to draw a histogram
server <- function(input, output) {

    output$showPlot1<- renderPlot({
        plot1
    })
    
    output$showTable1 <- renderDataTable(
        data_sample,
        options = list(
            pageLength = 15
            # initComplete = I("function(settings, json) {alert('WebGuard is Ready');}")
        )
    )
}

# Run the application 
shinyApp(ui = ui, server = server)
