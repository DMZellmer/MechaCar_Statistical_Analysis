# MechaCar Statistical Analysis

## Overview
The purpose of this analysis is to offer insights into the MechaCar's production to help the manufacturing team. To conduct this analysis, We used two datsets containing information related to the miles per gallon (MPG) and the suspension coils of the MechaCar. I am using the programming language R and its dplyr library (contained withing R's tidyverse) to complete this analysis.

## Multiple Linear Regression Model to predict MPG

### Fig. 1 
![image](https://user-images.githubusercontent.com/86337475/137965555-f76b4e80-b1ab-4408-a209-1bc9f890d8d5.png)

### Five variables tested in our multiple regression model:
#### Vehicle Length, p=2.60e-12***
#### Vehicle Weight
#### Spoiler Angle
#### Ground Clearance, p=5.21e08*** 
#### All-wheel Drive (AWD)


As denoted by (***) two p-values from variables Vehicle Length, and Ground Clearance, were massively lower than the statistically significant cut-off of p < 0.05, and therefore concluded to provide strong non-random variance with MPG. 

In addition to the variables provided non-random variance to MPG, MechaCar production would also like to know whether the slope of the linear model is at or near zero, as this would suggest the independent variables do not have an effect on the dependent variable (MPG). As the slope of a linear regression model approaches zero, the accuracy of the model approaches random, and the p-value approaches 1. The p-value for this model is 5.35e-11, which is very small, indicating a positive, not near-zero slope. Additionally, the team wants to know how accurately this model would predict the MPG of other MechaCar prototypes. Given the R-squared for this model is 0.7149, which says that out of 100 predictions, our model would correctly predict the MPG 71 times. Therefore, we can say this is an effective model.


## Deliverable 2

## Summary Statistics on Suspension Coils

### MechaCar production team has asked us to investigate their data (Suspension_coil.csv) for this specific purpose:

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

### Total Statistical Summary (total_summary) of all Manufacturing Lots
### Fig. 2
![image](https://user-images.githubusercontent.com/86337475/137983816-ebfdf421-4657-4686-bcf1-93962aa4cd66.png)

### Lot-specific Statistical Summary (lot_summary)
### Fig. 3
![image](https://user-images.githubusercontent.com/86337475/137984396-4c68a662-7437-4241-9191-8a923a3d9a27.png)

If one was only looking at the variance of the total summary of all manufacturing lots (Fig. 2), one would see that the variance across all three lots does not exceed 100 pounds per square inch (Var_PSI = 62.29 pounds per square inch).
However, upon a lot-specific analysis (Fig. 3) we can Lot3 suspension coils have a dangerously high level of variance at almost two times the maximum PSI variance (170 PSI). Lots 1 and 2 are well within the acceptable variance range (0.98 PSI and 7.47 PSI, respectively), however Lot3 does not pass data inspection, and therefore should be used in downstream production. 


## T-Tests on Suspension Coils

### T-test on all Manufacturing Lots compared to population mean of 1500 PSI
### Fig. 4
![image](https://user-images.githubusercontent.com/86337475/137989113-d8cac743-e57c-4a6d-92e7-7f9b505e5471.png)

