#Deliverable 1
library(tidyverse)

mecha_mpg <- read.csv('MechaCar_mpg.csv', check.names = F, stringsAsFactors = F)
head(mecha_mpg)
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mecha_mpg))


#Deliverable 2
sus_coil <- read.csv('Suspension_Coil.csv', check.names = F, stringsAsFactors = F)
head(sus_coil)

total_summary <- sus_coil %>% summarize(Mean_PSI=mean(PSI),
                                      Median_PSI=median(PSI),
                                      Var_PSI=var(PSI),
                                      Std_Dev_PSI=sd(PSI),
                                      Num_Coil=n(), .groups = 'keep')

lot_summary <- sus_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean_PSI=mean(PSI),
                                                                      Median_PSI=median(PSI),
                                                                      Var_PSI=var(PSI),
                                                                      Std_Dev_PSI=sd(PSI),
                                                                      Num_Coil=n(), .groups = 'keep')

#Deliverable 3

t.test(sus_coil$PSI,mu=1500)

lot1 <- subset(sus_coil, Manufacturing_Lot=="Lot1")
lot2 <- subset(sus_coil, Manufacturing_Lot=="Lot2")
lot3 <- subset(sus_coil, Manufacturing_Lot=="Lot3")

t.test(lot1$PSI,mu=1500)
t.test(lot2$PSI,mu=1500)
t.test(lot3$PSI,mu=1500)
