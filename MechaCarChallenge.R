#Deliverable 1
#Use the library() function to load the dplyr package
library(dplyr)

#Import and read in the MechaCar_mpg.csv file as a dataframe
mecha <- read.csv(file='RawData/MechaCar_mpg.csv', check.names=F, stringsAsFactors=F)

#Perform linear regression using the lm() function
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mecha)

#Using the summary() function, determine the p-value and the r-squared value for the linear regression model.
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mecha))


#Deliverable 2
#Import and read in the Suspension_Coil.csv file as a table
susp_coil <- read.csv(file='RawData/Suspension_coil.csv', check.names=F, stringsAsFactors=F)

#Write an RScript that creates a total_summary dataframe using the summarize() function to get the mean, median, variance, and standard deviation of the suspension coil's PSI column
total_summary <- susp_coil %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))

#Write an RScript that creates a lot_summary dataframe using the group_by() and the summarize() functions to group each manufacturing lot by the mean, median, variance, and standard deviation of the suspension coil's PSI column
lot_summary <- susp_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))

#Deliverable 3: T-Tests on Suspension Coils

#All Manufacturing Lots t-test
t.test(susp_coil$PSI, mu=1500)

#Subset summary tables for each manufacturing lot, then t-test for each manufacturing lot

lot1 <- susp_coil %>% filter(Manufacturing_Lot=='Lot1')
t.test(lot1$PSI, mu=1500)

lot2 <- susp_coil %>% filter(Manufacturing_Lot=='Lot2')
t.test(lot2$PSI, mu=1500)

lot3 <- susp_coil %>% filter(Manufacturing_Lot=='Lot3')
t.test(lot3$PSI, mu=1500)

