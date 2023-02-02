####Preamble ####
#Purpose: Simulate Data from Open Data Toronto's statistics on homeless shelter data flow
#Link: https://open.toronto.ca/dataset/toronto-shelter-system-flow/
# Author: Huda Sahaf
# Email: huda.sahaf@mail.utoronto.ca
# Date: Feb 3 2023
# Prerequisites: Need to know where to find Toronto's Homeless Shelter System data.

library(tibble)

set.seed(853)

simulated_shelter_data <-
  tibble(
    "Year" = c(2018:2022),
    "population_group" = sample(
      x = c(
        "Youth",
        "Single Adult", 
        "Families", 
        "Indigenous",
        "Refugees",
        "Non-Refugees",
        "Chronic"),
      size = 5, 
      replace = TRUE),
    
    "newly_identified" = sample(
      x = c(1:700),
      size = 5, 
      replace = TRUE
    )
    
      )
simulated_shelter_data 