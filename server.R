#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    https://shiny.posit.co/
#

# Diemid Rybchenko

library(shiny)
library(ggplot2)
library(dplyr)
library(tidyr)

shinyServer(function(input, output, session) {
  
  tpm <- read.csv("TPMs_table_100genes.csv")
  # reading our file
  
  observe({
    updateSelectInput(session, inputId  = "gene", label    = "Choose GeneID:", choices  = tpm$GeneID,
      selected = tpm$GeneID[1]  # on default we pick first gene
    )})
  output$tpmPlot <- renderPlot({
    req(input$gene)
    gene_df <- tpm %>%
      filter(GeneID == input$gene) %>%
      pivot_longer(cols = -GeneID,  names_to = "Sample", values_to = "TPM") # here we use all columns dispite of the GeneID(we don't need it here)
    # at the end we have Sample | TPM
    ggplot(gene_df, aes(x = Sample, y = TPM)) + # creating a ggplot, having on x Samples and TPMs on y-axis 
      geom_col() +
      geom_point(size = 2) + # adding an dots on the columns(better see)
      labs(title = paste("Gene:", input$gene), x = "Sample", y = "TPM") + # label for the concrete gene
      theme_minimal()+
      theme(axis.text.x = element_text(angle = 45, hjust = 1))
    # here I used angle = 45 and hjust = 1 to somehow adjust our plots to be better visualized
  })
  # Thank you for this course! Dziekuje za ten kurs, bylo naprawde ciekawie!
})
