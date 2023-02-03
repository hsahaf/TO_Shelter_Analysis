#### Preamble ####
# Purpose: Clean the survey data downloaded from https://open.toronto.ca/dataset/toronto-shelter-system-flow/
# Author: Huda Sahaf
# Date: Feb 3 2023
# Contact: huda.sahaf@mail.utoronto.ca
# License: MIT
# Pre-requisites: 
# - Need to have downloaded the ACS data and saved it to inputs/data
# - Don't forget to gitignore it!
# - Change these to yours
# Any other information needed?


#### Workspace setup ####
# Use R Projects, not setwd().
library(haven)
library(tidyverse)


# Read in the raw data. 
#| echo: false
#| include: false
####Basic Cleaning ###
raw_shelter_data<-
  read_csv(
    file = "to_shelter_system.csv",
    show_col_types = FALSE
  )
# Make the names easier to type
cleaned_shelter_data <-
  clean_names(raw_shelter_data)

# Have a look at the first six rows
head(cleaned_shelter_data)
```

```{r}
#| echo: false
#| include: false
#### Renaming the columns ####
names(cleaned_shelter_data)

cleaned_shelter_data<-
  cleaned_shelter_data |>
  rename(
    dates = date_mmm_yy,
    group_percentage = population_group_percentage,
    trans_nb_twospirit = gender_transgender_non_binary_or_two_spirit,
    male = gender_male,
    female = gender_female,
    over65 = age65over,
    under16 = ageunder16
  )

head(cleaned_shelter_data)