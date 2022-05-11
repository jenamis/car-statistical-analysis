# Load dplyr package
library(dplyr)

# Import and read MechaCar_mpg CSV as DF
car_mpg <- read.csv(file = "Resources/MechaCar_mpg.csv", check.names = F, stringsAsFactors = F)
head(car_mpg)

# Generate linear regression model
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = car_mpg)

# Generate summary statistics
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = car_mpg))

# Import and read Suspension_Coil CSV as table
suspension_coil <- read.csv(file = "Resources/Suspension_Coil.csv", check.names = F, stringsAsFactors = F)
head(suspension_coil)

# Create total summary DF using summarize() function
total_summary <- summarize(suspension_coil, Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))

# Create lot_summary DF using group_by() and summarize() functions
lot_summary <- group_by(suspension_coil, Manufacturing_Lot) %>% 
  summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))
