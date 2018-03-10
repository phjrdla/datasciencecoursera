library(shiny)
library(datasets)
library(ggplot2)
library(GGally)

# ui block
ui <- fluidPage(
  
  # Title
  
  titlePanel("Investigate correlations, distributions, scatterplots for dataset mtcars"),
  
  br(),
  fluidRow(
    column(10,
           p("Correlations are calculated between mpg and selected variable(s)."),
           h3("Click in the rectangle to select your variable(s)."),
           p("Clear any variable not required using backspace.")
           )
    ),
  
  # Sidebar layout 
  sidebarLayout(
    
    # Sidebar panel 
    sidebarPanel(
      
      # Select an input
      selectInput("variable", "Variable(s):",
                  c("Number of cylinders" = "cyl",
                    "Displacement (cu.in.)" = "disp",
                    "Gross horsepower" = "hp",
                    "Weight" = "wt",
                    "1/4 mile time" = "qsec",
                    "Transmission (0 = automatic, 1 = manual)" = "am",
                    "Number of forward gears" = "gear",
                    "Number of carburetors" = "carb"),
                    multiple = T)
    ),
    
    # Main panel 
    mainPanel(
      
      # H3 HTML text for caption
      h3(textOutput("caption")),
      
      # Output computed plot
      plotOutput("appPlot")
      
    )
  )
)

# Define server block
server <- function(input, output) {
  
  # Build ggpairs columns argument from selection
  columnsText <- reactive({
    paste( input$variable )
  })
  
  # Build the caption and return it
  output$caption <- renderText({
    paste(columnsText())
  })
  
  # Generate a ggpairs plot for mpg and selected input
  output$appPlot <- renderPlot({
    ggpairs( mtcars, c('mpg',columnsText() ) ) +
      theme(legend.position = "none",
            panel.grid.major = element_blank(),
            axis.ticks = element_blank(),
            axis.title.x = element_text(angle = 180, vjust = 1, color = "black"),
            panel.border = element_rect(fill = NA))
  })
  
}

# Create Shiny app ----
shinyApp(ui, server)
