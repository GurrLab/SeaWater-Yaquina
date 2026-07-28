setwd("C:/Users/Katie/Documents/BES_Internship/Seawater-Yaquina/RAnalysis/Output")
getwd()
list.files()
library(tidyverse)
library(readxl)
MAY_AUGUST_DO_2009 <- read_excel("MAY_AUGUST_DO_2009.xlsx")
View(MAY_AUGUST_DO_2009)
ggplot(MAY_AUGUST_DO_2009, aes(x=Date_GMT)) +
  geom_line(aes(y=Dissolved_oxygen_mgL))
