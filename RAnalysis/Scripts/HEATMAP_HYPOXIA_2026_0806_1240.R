#Import Datasets from Excel
#HYPOXIA_3half_threshold_events_2026_0805_1027
#HYPOXIA_5_threshold_events_2026_0805_1029 
#Frequency code

#Pick what dataset to use
data <- HYPOXIA_3half_threshold_events_2026_0805_1027
data <- HYPOXIA_5_threshold_events_2026_0805_1029
library(ggplot2)
library(dplyr)

# Replace all 0s with NA in a vector or data frame
data[data == 0] <- NA
# Now functions like na.omit() will drop them automatically
clean_data <- na.omit(data)
data <- data[!is.na(data$Month), ] 
#All months
data$Month <- factor(
  data$Month,
  levels = c(
    "January", "February", "March", "April", "May", "June",
    "July", "August", "September", "October", "November", "December"
  )
)
#focus months
data$Month <- factor(
  data$Month,
  levels = c(
    "April", "May", "June",
    "July", "August", "September", "October"
  )
)

ggplot(data, aes(x = Year, y = Month, fill = Frequency)) +
  geom_tile() +
  scale_fill_gradient(low = "white", high = "red") +
  labs(x = "Year", y = "Month", title = "Hypoxic Events Frequency")

#Mean Duration code
#Pick what dataset to use
data <- HYPOXIA_3half_threshold_events_2026_0805_1027
data <- HYPOXIA_5_threshold_events_2026_0805_1029
library(ggplot2)
library(dplyr)

# Replace all 0s with NA in a vector or data frame
data[data == 0] <- NA
# Now functions like na.omit() will drop them automatically
clean_data <- na.omit(data)

data$Month <- factor(
  data$Month,
  levels = c(
    "January", "February", "March", "April", "May", "June",
    "July", "August", "September", "October", "November", "December"
  )
)

#focus months
data$Month <- factor(
  data$Month,
  levels = c(
    "June",
    "July", "August", "September"
  )
)

ggplot(data, aes(x = Year, y = Month, fill = `Mean Duration (hrs)`)) +
  geom_tile() +
  scale_fill_gradient(low = "white", high = "red") +
  labs(x = "Year", y = "Month", title = "Hypoxic Events Mean Duration")

#Mean Intensity Code

#Pick what dataset to use
data <- HYPOXIA_3half_threshold_events_2026_0805_1027
data <- HYPOXIA_5_threshold_events_2026_0805_1029
library(ggplot2)
library(dplyr)

# Replace all 0s with NA in a vector or data frame
data[data == 0] <- NA
# Now functions like na.omit() will drop them automatically
clean_data <- na.omit(data)

data$Month <- factor(
  data$Month,
  levels = c(
    "January", "February", "March", "April", "May", "June",
    "July", "August", "September", "October", "November", "December"
  )
)

#focus months
data$Month <- factor(
  data$Month,
  levels = c(
    "June",
    "July", "August", "September"
  )
)

ggplot(data, aes(x = Year, y = Month, fill = `Mean Intensity (mg/l)`)) +
  geom_tile() +
  scale_fill_gradient(low = "red", high = "white") +
  labs(x = "Year", y = "Month", title = "Hypoxic Events Mean Intensity")

#FDM Value ((frequency*duration)/magnitude)
#Pick what dataset to use
data <- HYPOXIA_3half_threshold_events_2026_0805_1027
data <- HYPOXIA_5_threshold_events_2026_0805_1029
library(ggplot2)
library(dplyr)

# Replace all 0s with NA in a vector or data frame
data[data == 0] <- NA
# Now functions like na.omit() will drop them automatically
clean_data <- na.omit(data)

data$Month <- factor(
  data$Month,
  levels = c(
    "January", "February", "March", "April", "May", "June",
    "July", "August", "September", "October", "November", "December"
  )
)

#focus months
data$Month <- factor(
  data$Month,
  levels = c(
    "June",
    "July", "August", "September"
  )
)

ggplot(data, aes(x = Year, y = Month, fill = `FDM Value`)) +
  geom_tile() +
  scale_fill_gradient(low = "white", high = "red") +
  labs(x = "Year", y = "Month", title = "Hypoxic Events FDM Value")
#Lowest Dissolved Oxygen Value by Month
data <- HYPOXIA_5_threshold_events_2026_0805_1029

data$Month <- factor(
  data$Month,
  levels = c(
    "January", "February", "March", "April", "May", "June",
    "July", "August", "September", "October", "November", "December"
  )
)
ggplot(data, aes(x = Year, y = Month, fill = `Lowest DO (mg/l)`)) +
  geom_tile() +
  scale_fill_gradient(low = "red", high = "white") +
  labs(x = "Year", y = "Month", title = "Lowest DO Value by Month")


#omiting some months practice
#Pick what dataset to use
data <- HYPOXIA_3half_threshold_events_2026_0805_1027
data <- HYPOXIA_5_threshold_events_2026_0805_1029
library(ggplot2)
library(dplyr)

# Replace all 0s with NA in a vector or data frame
data[data == 0] <- NA
# Now functions like na.omit() will drop them automatically
clean_data <- na.omit(data)

data <- data[!is.na(data$Month), ] 

data$Month <- factor(
  data$Month,
  levels = c(
    "June",
    "July", "August", "September"  )
)
ggplot(data, aes(x = Year, y = Month, fill = Frequency)) +
  geom_tile() +
  scale_fill_gradient(low = "white", high = "red") +
  labs(x = "Year", y = "Month", title = "Hypoxic Events Frequency")


