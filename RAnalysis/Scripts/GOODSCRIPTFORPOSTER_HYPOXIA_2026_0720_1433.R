setwd("C:/Users/Katie/Documents/BES_Internship/Seawater-Yaquina/RAnalysis/Output")
getwd()
list.files()
library(tidyverse)
library(readxl)
MAY_AUGUST_DO_2009 <- read_excel("MAY_AUGUST_DO_2009.xlsx")
View(MAY_AUGUST_DO_2009)
MAY_AUGUST_DO_2009$Date_GMT <- as.POSIXct(MAY_AUGUST_DO_2009$Date_GMT)
ggplot(MAY_AUGUST_DO_2009, aes(x=Date_GMT, y=Dissolved_oxygen_molm3)) +
  geom_line()

str(MAY_AUGUST_DO_2009)
class(MAY_AUGUST_DO_2009$Date_GMT)

