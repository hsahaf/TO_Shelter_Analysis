library(tidyverse)
library(janitor)
library(dplyr)
library(ggplot2)
library(kableExtra)
library(opendatatoronto)
library(knitr)
library(RColorBrewer)


###Read in Data####
raw_shelter_data<-
  read_csv(
    file = 
      "https://ckan0.cf.opendata.inter.prod-toronto.ca/dataset/ac77f532-f18b-427c-905c-4ae87ce69c93/resource/237d5eff-ba47-46c4-8717-a92a802abdf7/download/toronto-shelter-system-flow.csv",
    show_col_types = FALSE
  )
write_csv(
  x = raw_shelter_data,
  file = "to_shelter_system.csv"
)
head(raw_shelter_data)
tail(raw_shelter_data)