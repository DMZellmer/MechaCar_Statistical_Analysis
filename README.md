# MechaCar Statistical Analysis

## Overview
The purpose of this analysis is to offer insights into the MechaCar's production to help the manufacturing team. To conduct this analysis, We used two datsets containing information related to the miles per gallon (MPG) and the suspension coils of the MechaCar. I am using the programming language R and its dplyr library (contained withing R's tidyverse) to complete this analysis.


### Fig. 1  Multiple Linear Regression Model to predict MPG
![image](https://user-images.githubusercontent.com/86337475/137965555-f76b4e80-b1ab-4408-a209-1bc9f890d8d5.png)

### Five variables tested in our multiple regression model:
#### Vehicle Length, p=2.60e-12***
#### Vehicle Weight
#### Spoiler Angle
#### Ground Clearance, p=5.21e08*** 
#### All-wheel Drive (AWD)


As denoted by (***) two p-values from variables Vehicle Length, and Ground Clearance, were massively lower than the statistically significant cut-off of p < 0.05, and therefore concluded to provide strong non-random variance with MPG. 

In addition to the variables provided non-random variance to MPG, MechaCar production would also like to know whether the slope of the linear model is at or near zero, as this would suggest the independent variables do not have an effect on the dependent variable (MPG). As the slope of a linear regression model approaches zero, the accuracy of the model approaches random, and the p-value approaches 1. The p-value for this model is 5.35e-11, which is very small, indicating a positive, not near-zero slope. Additionally, the team wants to know how accurately this model would predict the MPG of other MechaCar prototypes. Given the R-squared for this model is 0.7149, which says that out of 100 predictions, our model would correctly predict the MPG 71 times. Therefore, we can say this is an effective model.


## DELIVERABLE 2

## Summary Statistics on Suspension Coils

### MechaCar production team has asked us to investigate their data (Suspension_coil.csv) for this specific purpose:

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

### Fig. 2  Total Statistical Summary (total_summary) of all Manufacturing Lots
 
![image](https://user-images.githubusercontent.com/86337475/137983816-ebfdf421-4657-4686-bcf1-93962aa4cd66.png)

### Fig. 3  Lot-specific Statistical Summary (lot_summary)

![image](https://user-images.githubusercontent.com/86337475/137984396-4c68a662-7437-4241-9191-8a923a3d9a27.png)

If one was only looking at the variance of the total summary of all manufacturing lots (Fig. 2), one would see that the variance across all three lots does not exceed 100 pounds per square inch (Var_PSI = 62.29 pounds per square inch).
However, upon a lot-specific analysis (Fig. 3) we can Lot3 suspension coils have a dangerously high level of variance at almost two times the maximum PSI variance (170 PSI). Lots 1 and 2 are well within the acceptable variance range (0.98 PSI and 7.47 PSI, respectively), however Lot3 does not pass data inspection, and therefore should be used in downstream production. 


## DELIVERABLE 3

## T-Tests on Suspension Coils

###  Fig. 4  T-test on all Manufacturing Lots compared to population mean of 1500 PSI
![image](https://user-images.githubusercontent.com/86337475/137989113-d8cac743-e57c-4a6d-92e7-7f9b505e5471.png)

As you can see in Fig. 4,  with a p-value of 0.06, which is higher than the common significance level of 0.05, there is not strong enough evidence to reject the null hypothesis. That is to say, we accept the null hypothesis that the mean of all three manufacturing lots is statistically similar to the presumed population mean of 1500.

### Fig. 5  Lot-specific T-tests
![image](https://user-images.githubusercontent.com/86337475/137992370-86fdac12-469e-479c-a621-22cfcaa56acb.png)
 
 In Fig. 5 we ran T-tests for Lots 1-3 compared to the presumed population mean of 1500 PSI. 
 
 1. Lot 1 literally has a sample mean of 1500 PSI, and with a p-value = 1, we must accept the null hypothesis that there is no statistical difference between the mean of Lot1 and the presumed population mean.
 2. Lot 2 has a sample mean of 1500.2 PSI, and slightly more variance than Lot1, with Lot2 p-value = 0.6072.  This is over 10 times higher than the common significance level (p=0.05), therefore the null hypothesis cannot be rejected, and we state that Lot2 is statistically similar to the population mean.
 3. Lot 3 not surprisingly is a different scenario. Here the sample mean is 1496.14 and the p-value is 0.04, which is lower than the common significance level of 0.05. All indicating to reject the null hypothesis that this sample mean and the presumed population mean are not statistically different.

## DELIVERABLE 4

## Study Design: MechaCar vs Competition
Identify comparable cars from multiple competitors. Use these metrics to form and test the null and alternative hypotheses:

### Metrics
*City Fuel Efficiency
*Highway Fuel Efficiency
*Horsepower
*Cost of Maintenance (yearly)
*Safety Rating
*Vehicle Cost (Dependent Variable)

After acquiring data on these factors over a prescribed period of time, reject or accept the null hypothesis, which could the MechaCar is priced correctly based on it's performance relative to the competition on the above metrics.
The alternative hypothesis to this would be MechaCar is not priced correctlly based on it's performance relative to competitors.

### Statistical Tests
In this case a multiple linear regression would be useful to determine which factors have correlation/variance with the vehicle cost (dependent variable), and which combination of metrics have the greatest impact on price, which is a important 'selling point' for consumers and could better determine the perceived value of the MechaCar.



