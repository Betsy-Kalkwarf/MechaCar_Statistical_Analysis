library(tidyverse)
library(dplyr)

#import file as df
MechaCar <- read.csv('MechaCar_mpg.csv',header = TRUE, check.names = F,stringsAsFactors = F)

#linear regression
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar)

#summary
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar))

#start of Deliverable 2
Suspension <- read.csv('Suspension_Coil.csv', header = TRUE)

summarize_suspension <- Suspension %>% summarize(Mean_PSI=mean(PSI), Median_PSI=median(PSI), Variance_PSI=var(PSI), SD_PSI=sd(PSI), .groups = 'keep')

summarize_by_lot <- Suspension %>% group_by(Manufacturing_Lot) %>% summarize(Mean_PSI=mean(PSI), Median_PSI=median(PSI), Variance_PSI=var(PSI), SD_PSI=sd(PSI), .groups = 'keep')

#Start of Deliverable 3
?t.test()
t.test(Suspension$PSI, mu=1500)

Lot1 <- subset(Suspension, Manufacturing_Lot =="Lot1")
Lot2 <- subset(Suspension, Manufacturing_Lot =="Lot2")
Lot3 <- subset(Suspension, Manufacturing_Lot =="Lot3")


t.test(Lot1$PSI, Suspension$PSI)
t.test(Lot2$PSI, Suspension$PSI)
t.test(Lot3$PSI, Suspension$PSI)
