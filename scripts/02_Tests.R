simulated_shelter_data$Year|>
  min() == "2018"

simulated_shelter_data$population_group|>
  length() == 7

simulated_shelter_data$Year|>
  max() == "2022"

simulated_shelter_data$newly_identified|>
  length() == 5