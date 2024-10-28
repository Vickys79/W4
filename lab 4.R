
install.packages("dplyr")
library(dplyr)
if(!require("pacman")){install.packages("pacman")
  }

pacman::p_load(
  tidyverse,
  kableExtra,
  flextable,
  glue,
  ggplot2)

Data <- read.csv("/Users/shenzihan/Desktop/SOCS0100/EMDAT.csv", header = TRUE)
df <- Data %>%
  select(Entity, Year, injured_all_disasters, deaths_all_disasters, homeless_all_disasters) %>%
  rename(deaths = deaths_all_disasters, injured = injured_all_disasters, homeless = homeless_all_disasters, country = Entity)


df %>%
  select(country, Year) %>%
  map_dbl(mean, na.rm = TRUE)



