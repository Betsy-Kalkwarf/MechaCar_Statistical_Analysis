library(tidyverse)
library(dplyr)

#import file as df
MechaCar <- read.csv('MechaCar_mpg.csv',header = TRUE, check.names = F,stringsAsFactors = F)

#linear regression
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar)

#summary
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar))
