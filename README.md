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
### All-wheel Drive (AWD)

As denoted by (***) two p-values from variables Vehicle Length, and Ground Clearance, were massively lower than the statistically significant cut-off of p < 0.05, and therefore concluded to provide strong non-random variance with MPG. 

In addition to the variables provided non-random variance to MPG, MechaCar production would also like to know whether the slope of the linear model is at or near zero, as this would suggest the independent variables do not have an effect on the dependent variable (MPG). As the slope of a linear regression model approaches zero, the accuracy of the model approaches random, and the p-value approaches 1. The p-value for this model is 5.35e-11, which is very small, indicating a positive, not near-zero slope. Additionally, the team wants to know how accurately this model would predict the MPG of other MechaCar prototypes. Given the R-squared for this model is 0.7149, which says that out of 100 predictions, our model would correctly predict the MPG 71 times. Therefore, we can say this is an effective model.
