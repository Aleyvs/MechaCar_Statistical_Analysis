# MechaCar_Statistical_Analysis
This new assignment consists of three technical analysis deliverables and a proposal for further statistical study. 

## Linear Regression to Predict MPG

- Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

    To determine which variables provide a significant contribution to the linear model, we must look at the individual variable p-values. See in the image below the results of the statistical metrics on the multiple linear regression model.

    ![Statistical_Summary](/Images/Multipe_Linear_Reg.png)

    In the summary output, each Pr(>|t|) value represents the probability that each coefficient contributes a random amount of variance to the linear model. According to our results, vehicle_length and ground_clearance (as well as intercept) are statistically unlikely to provide random maounts of variance to the linear model. This means that vehicle_length and ground_clearance have a significant impact on the mpg.

- Is the slope of the linear model considered to be zero? Why or why not?

    If there is no significant linear relationship, each dependent value would be determined by random chance and error. Therefore, our linear model would be a flat line with a slope of zero.
    This model is a multiple linear model, since we are taking into account all 6 dependent values from the data set. None of the slopes are zero, but some (like vehicle_length and ground_clearance) are more significant (less random) than others.
    In addition, the p-value of our multiple linear regression analysis is 5.35 x 10-11, which is much smaller than an assumed significance level of 0.05%. Therefore, we can state that there is sufficient evidence to reject our null hypothesis, which means that the slope of our linear model is not zero.

- Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

    But according to the calculated r-squared value, using these dependent values to predict mpg is only 71% accurate. Despite the number of significant variables, the multiple linear regression model shows a r-squared value of 0.71 while the p-value remained significant. Using the p-value and r-squared value, we have determined that there is a significant relationship between vehicle_length, ground_clearance and mpg but to more accurately predict future mpg observations, we might need to use additional values. 


## Summary Statistics on Suspension Coils

- The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

Looking at all the information without division by lots, the manufacturing data meets the design specification as shown in the table below.

![Summary](/Images/Summary.png)

But according to the table showing the grouped statistics by lot, lots 1 and 2 are both well within design specifications. On the other hand lot 3 shows the most variance and exceeds the manufacturers specs.

![Grouped_Summary](/Images/Grouped_Summary.png)


## T-Tests on Suspension Coils

The first T-Test we ran was to determine if the PSI across all manufacturing lots is statistically different from the population mean of 1,500 pounds per square inch. Assuming our significance level was the common 0.05%, our p-value is barely above the significance level (0.06). Therefore, we can say that there is barely enough statistical difference between all manufacturing lots and the piopulation mean. I would recommend looking at the individual lots to see a more specific T-Test.

![all_lots_ttest](/Images/all_lots.png)

### Lot 1

The T-Test for Lot 1 shows almost a perfect 1 in p-value. This means that the data is perfectly described by the restricted model. With this informatio we can say that there is no statistical difference between the observed sample mean and the population mean of 1500 pounds per square inch.

![Lot1](/Images/Lot1.png)

### Lot 2

The T-Test for Lot 2 shows a p-value of 0.61, taking into account the significance level as 0.05%, our p-value is higher so we do not have sufficient evidence to reject the null hypothesis, and both menas are statistically similar.

![lot2](/Images/Lot2.png)

### Lot 3

The T-Test for Lot 3 shows a p-value of 0.04, again taking into account the significance level as 0.05%, our p-value for this test is lower, this means the null hypothesis is rejected and the means are not statistically similar.

![lot3](/Images/Lot3.png)

## Study Design: MechaCar vs Competition

When buying a new car, thinking critically the user should always want a car that will provide the most benefits for the cost. On this study we are comparing the amount of mpg a car can get depending on the vehicle weight.

Using a one way ANOVA test we can go to our mechaCar data set. For this statistical test, we'll answer the question, " is there any difference in the mpg of a vehicle based on its weight?"

The Hypotheis for this test are always the following:

Null-Hypothesis : The means of all groups are equal, or µ1 = µ2 = … = µn.
NonNull Hypotheis : At least one of the means is different from all other groups.

Going to the data set, we will use the "mpg" as our dependent, measured variable and "vehicle_weight" will be our independent, categorical variable.

![ANOVA](/Imshrd/ANOVA.png)

Looking at the image above we can see that our p-value in this test is higher that our assumed 0.05% significance level. Therefore, we would stat that there is not sufficient evidence to reject the null hypothesis and accept that there is not a significant difference in mpg depending on the vehicle_weight and other variables.