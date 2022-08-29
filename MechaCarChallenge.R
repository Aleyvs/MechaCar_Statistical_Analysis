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


##Deliverable 3

#1. write an RScript using the t.test() function to determine if the PSI across all 
# manufacturing lots is statistically different from the population mean of 1,500 pounds per square inch.
t.test(suspension_Coil$PSI,mu = 1500)

#2. write three more RScriptsusing the t.test() function and its subset() argument to determine if the PSI 
# for each manufacturing lot is statistically different from the population mean of 1,500 pounds per square inch.

#t-test Lot 1
t.test(subset(suspension_Coil,Manufacturing_Lot=="Lot1")$PSI,mu = 1500)
# t-test Lot 2
t.test(subset(suspension_Coil,Manufacturing_Lot=="Lot2")$PSI,mu = 1500)
# t-test on Lot 3
t.test(subset(suspension_Coil,Manufacturing_Lot=="Lot3")$PSI,mu = 1500)

##Deliverable 4

aov(mpg ~ vehicle_weight,data=mechaCar_data)
summary(aov(mpg ~ vehicle_weight,data=mechaCar_data))