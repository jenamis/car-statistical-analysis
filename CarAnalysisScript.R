# Load dplyr package
library(dplyr)

# Import and read MechaCar_mpg CSV as DF
car_mpg <- read.csv(file = "Resources/MechaCar_mpg.csv", check.names = F, stringsAsFactors = F)
head(car_mpg)

# Generate linear regression model
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = car_mpg)

# Generate summary statistics
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = car_mpg))
