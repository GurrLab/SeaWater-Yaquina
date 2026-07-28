barplot(table(Severe$event),
        col = "blue",
        main = "frequency of stress event",
        xlab = "Event",
        ylab = "frequency")
barplot(table(Yaquina_Bay_pHEvents_1_$type),
        col = "green",
        main = "Frequency of pH Stress in Yaquina Bay",
        ylab = "Type",
        xlab = "Frequency")

boxplot(Yaquina_Bay_pHEvents_1_$eventpH, horizonal = TRUE,
        col = "lightblue",
        main = "pH Events",
        xlab = "Event",
        ylab = "pH")

boxplot(eventpH ~ type, data = Yaquina_Bay_pHEvents_1_, horizontal = TRUE,
        col = "darkgreen",
        main = "pH during varying stress events",
        xlab = "pH",
        ylab = "Severity")


boxplot(durationMinutes ~ type, data = Yaquina_Bay_pHEvents_1_, horizontal = TRUE,
        col = "purple",
        main = "Duration of pH stress events",
        xlab = "Minutes",
        ylab = "Severity")
Yaquina_Bay_pHEvents_1_ %>% ggplot(aes(x=type)) +
geom_bar()
library(tidyverse)