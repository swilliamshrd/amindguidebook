setwd("H:/Groups/Indian Guidebook Data/")

library(dplyr)



# edu <- read.csv(file.path("educational", "allreservations.csv"), skip = 1, header=TRUE) %>%
#       select(-contains("Margin.of.Error"))
# 
# soc <- read.csv(file.path("social", "allreservations.csv"), skip = 1, header=TRUE) %>%
#       select(-contains("Margin.of.Error")) 
# 
# raceage <- read.csv(file.path("raceage", "allreservations.csv"), skip = 1, header=TRUE) %>%
#       select(-contains("Margin.of.Error"))
# 

empl <- read.csv(file.path("employment", "allreservations.csv"), skip = 1, header=TRUE) %>%
      select(-contains("Margin.of.Error")) %>%
      setNames(gsub("\\.", "", names(.))) %>%
      select(Id, Id2, Geography, InlaborforceEstimatePopulation16yearsandover, EmployedEstimatePopulation16yearsandover, UnemploymentrateEstimatePopulation16yearsandover) %>%
      setNames(c("Id", "Id2", "Geography", "InLaborForce", "EmploymentRate", "UnemploymentRate"))