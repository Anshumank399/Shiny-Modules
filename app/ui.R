
# Load Libraries ----------------------------------------------------------

library(shiny)
library(shinydashboard)
library(shinydashboardPlus)
library(DT)
library(tidyverse)
library(shinyjs)
#library(sodium)

# Define UI components ----------------------------------------------------

header <-
  dashboardHeaderPlus(title = "Simple Dashboard", uiOutput("logoutbtn"))

sidebar <- dashboardSidebar(uiOutput("sidebarpanel"))
body <- dashboardBody(shinyjs::useShinyjs(), uiOutput("body"))

ui <- dashboardPagePlus(
  header,
  sidebar,
  body,
  skin = "blue",
  sidebar_fullCollapse = T,
  enable_preloader = T
)
