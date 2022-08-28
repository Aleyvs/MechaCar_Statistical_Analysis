## Deliverable 1

#3. Use the library() function to load the dplyr package.
library(dplyr) 

#4. Import and read in the MechaCar_mpg.csv file as a dataframe.
mechaCar_data <- read.csv('MechaCar_mpg.csv')

##5.  generate multiple linear regression model to predict mpg using all other dataframe parameters
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechaCar_data) 

##6. determine p-value and the r-squared value
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechaCar_data))


## Deliverable 2

#2. Import and read in the Suspension_Coil.csv file as a dataframe.
suspension_Coil <- read.csv('Suspension_Coil.csv')

#3. Write an RScript that creates a total_summary dataframe 
## using the summarize() function to get the mean, median, variance, and standard deviation 
## of the suspension coil’s PSI column.
total_summary <- suspension_Coil %>% summarize(Mean=mean(PSI),Median=median(PSI), Variance=var(PSI),SD=sd(PSI))

#4. Write an RScript that creates a lot_summary dataframe 
## using the group_by() and the summarize() functions to group each manufacturing lot 
## by the mean, median, variance, and standard deviation of the suspension coil’s PSI column.
lot_summary <- suspension_Coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI), Variance=var(PSI),SD=sd(PSI))
