#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    https://shiny.posit.co/
#

# Diemid Rybchenko


library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  titlePanel("TPM expression plot (100 genes)(created by Diemid Rybchenko :) )"),
  
  sidebarLayout( # diving page on 2 sides(main and additional)
    sidebarPanel(
      selectInput("gene", "Choose GeneID:", choices = NULL)
      # here we have our inputiD which is gene(server will receive its)
      # next we have a label, that is a kinda obvious
      # we write choices = null because we want our gene list to be empty and filled in server.R using updateSelect, that was mentioned on Pegaz
    ),
    
    mainPanel(
      plotOutput("tpmPlot")
      # place, where our plot will be showed
    )
  )
))
