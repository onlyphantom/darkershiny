# Install packages if necessary
packs <- c("shiny", "dplyr", "tidyr", "maps", "scales", "ggplot2")
packs_toinstall <- packs[!(packs %in% installed.packages())]
if(length(packs_toinstall) > 0){
    install.packages(packs_toinstall)
}


library(shiny)
source("visualize.R")

# Define UI for WebGuard
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

# Define server logic to render the table and plot
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
