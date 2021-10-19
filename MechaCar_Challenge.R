mecha_mpg <- read.csv('MechaCar_mpg.csv', check.names = F, stringsAsFactors = F)
head(mecha_mpg)
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mecha_mpg))
