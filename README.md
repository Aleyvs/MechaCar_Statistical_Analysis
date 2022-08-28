# MechaCar_Statistical_Analysis
This new assignment consists of three technical analysis deliverables and a proposal for further statistical study. 

## Linear Regression to Predict MPG



- Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
    To determine which variables provide a significant contribution to the linear model, we must look at the individual variable p-values. See in the image below the results of the statistical metrics on the multiple linear regression model.
    ![image]
    In the summary output, each Pr(>|t|) value represents the probability that each coefficient contributes a random amount of variance to the linear model. According to our results, vehicle_length and ground_clearance (as well as intercept) are statistically unlikely to provide random maounts of variance to the linear model. This means that vehicle_length and ground_clearance have a significant impact on the mpg.

- Is the slope of the linear model considered to be zero? Why or why not?
    If there is no significant linear relationship, each dependent value would be determined by random chance and error. Therefore, our linear model would be a flat line with a slope of zero.
    This model is a multiple linear model, since we are taking into account all 6 dependent values from the data set. None of the slopes are zero, but some (like vehicle_length and ground_clearance) are more significant (less random) than others.
    In addition, the p-value of our multiple linear regression analysis is 5.35 x 10-11, which is much smaller than an assumed significance level of 0.05%. Therefore, we can state that there is sufficient evidence to reject our null hypothesis, which means that the slope of our linear model is not zero.

- Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
    But according to the calculated r-squared value, using these dependent values to predict mpg is only 71% accurate. Despite the number of significant variables, the multiple linear regression model shows a r-squared value of 0.71 while the p-value remained significant. Using the p-value and r-squared value, we have determined that there is a significant relationship between vehicle_length, ground_clearance and mpg but to more accurately predict future mpg observations, we might need to use additional values. 
