#3. Use the library() function to load the dplyr package.
library(dplyr) 

#4. Import and read in the MechaCar_mpg.csv file as a dataframe.
mechaCar_data <- read.csv('MechaCar_mpg.csv')

##5.  generate multiple linear regression model to predict mpg using all other dataframe parameters
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechaCar_data) 

##6. determine p-value and the r-squared value
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechaCar_data))