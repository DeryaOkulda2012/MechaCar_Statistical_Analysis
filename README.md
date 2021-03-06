# MechaCar_Statistical_Analysis


## Deliverable 1: Linear Regression to Predict MPG
Perform multiple linear regression analysis to identify which variables in the dataset predict the miles-per-gallon (MPG) of MechaCar prototypes

!["ScreenShots/Del1_Image1.png"](ScreenShots/Del1_Image1.png)

!["ScreenShots/Del1_Image2.png"](ScreenShots/Del1_Image2.png)

Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
- Vehicle Length (vehicle_length) and Ground Clearance (ground_clearance) are statistically unlikely to provide random amounts of variance to the linear model. Vehicle Length having a p-value of 2.60e-12 and Ground Clearance having a p-value of 5.21e-08, indicating they are statistically significant on MPG.

Is the slope of the linear model considered to be zero? Why or why not?
- The p-value is below a significance level of 0.05%, meaning the slope of this model is not zero, indicating we are able to reject the null hypothesis.

Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
- The R-squared value for this model is 0.7149 which means 71.5% of observed variations can be explained by this model, which means it can be a good model to predict MPG.

## Deliverable 2: Summary Statistics on Suspension Coils

Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots

!["ScreenShots/Del2_Image1_LotSummary.png"](ScreenShots/Del2_Image1_LotSummary.png)

!["ScreenShots/Del2_Image2_TotalSummary.png"](ScreenShots/Del2_Image2_TotalSummary.png)

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch.
Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually?
Why or why not?

- The overall variance for all lots is 62.29 PSI, indicating design specifications are met when the three total are summarized together.
- Looking deeper, the summary of Lot 1 having a variance of 0.979 PSI and Lot 2 having a variance of 7.5 PSI; indicates both are inside design requirements.
- Suspension coils from Lot 3 on the other hand show a high variance of 170.27 PSI, outside of design specification requirements.

## Deliverable 3: T-Tests on Suspension Coils

Run t-tests to determine if the manufacturing lots are statistically different from the mean population

### Total of Three Lots t-test:
- P-Value for all lots is 0.06028 which is above our significance level of 0.05; fail to reject null hypothesis
!["ScreenShots/Del3_Image3_ALL_Lots.png"](ScreenShots/Del3_Image3_ALL_Lots.png)

### Lot 1 t-test
- P-Value for Lot 1 is 1, far above our significance level of 0.05: fail to reject null hypothesis.
!["ScreenShots/Del3_Image4_Lot_1.png"](ScreenShots/Del3_Image4_Lot_1.png)

### Lot 2 t-test
- P-Value for Lot 2 is 0.6072, also above our significance level of 0.05: fail to reject null hypothesis.
!["ScreenShots/Del3_Image5_Lot_2.png"](ScreenShots/Del3_Image5_Lot_2.png)

### Lot 3 t-test
- P-Value for Lot 3 is 0.04168, below our significance level of 0.05: reject null hypothesis.
!["ScreenShots/Del3_Image6_Lot_3.png"](ScreenShots/Del3_Image6_Lot_3.png)



## Deliverable 4: Design a Study Comparing the MechaCar to the Competition

Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. For each statistical analysis, write a
summary interpretation of the findings.

- Statistical study comparing vehicle performance to vehicle emissions: MechaCar vs. competition

What metric or metrics are you going to test?

- Vehicle Emissions
- City and highway fuel efficiencies.

What is the null hypothesis or alternative hypothesis?

- In statistical hypothesis testing, the null hypothesis of a test always predicts no effect or no relationship between variables, while the alternative hypothesis states your research prediction of an effect or relationship.
- Null Hypothesis: MechaCar produces equal or more emissions than its competitors. To reject the Null Hypothesis to prove MechCar outperforms the competition, we need to collect fuel efficiency data for MechaCar and their competitors for the same type of cars. Null Hypothesis is that all of the cars in the same class have the same fuel efficiency.
- Alternative Hypothesis: MechaCar produces less emissions than its competitors.

What statistical test would you use to test the hypothesis? And why?

- T-tests can be run between MechaCar and individual competitors to show direct comparison
- ANOVA can be run between MechaCar and multiple competitors to show overall comparison

What data is needed to run the statistical test?

- Emissions from both MechaCar and its competitors

