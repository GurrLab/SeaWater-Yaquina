setwd("C:/Users/Katie/Documents/BES_Internship/Seawater-Yaquina/RAnalysis/Output")
getwd()
list.files()
Compiled_master_file <- read.csv("Compiled_master_file.csv")
library(tidyverse)
View(Compiled_master_file)
Compiled_master_file %>%
  filter(
    Date_GMT >= as.Date("2009-05-01"),
    Date_GMT <= as.Date("2009-09-01")
  ) %>%
ggplot(Compiled_master_file, aes(x=Date_GMT)) +
  geom_line(aes(y=Dissolved_oxygen_mgL))
