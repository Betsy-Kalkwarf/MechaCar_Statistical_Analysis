##Linear Regression to Predict MPG
This linear regression looked for correlation between MPG and other variables (vehicle length and width, spoiler angle, ground clearance and AWD.) The variables with p-values large enough to not reject the null hypothesis were vehicle weight, spoiler angle, and AWD. This can be seen in the png below.

![alt text](https://github.com/Betsy-Kalkwarf/MechaCar_Statistical_Analysis/blob/main/Multi%20Lin%20Reg.png)

The p-value for the multiple variable regression is 5.35 x 10^-11, which is well below 0.05, therefore the slope is not zero. The r-squared value is 0.7149. Therefore, the model fits the given data well but since there are multiple variables plus the intercept with extremely low p-values, this model may not fit different data with similar variables.


##Summary Statistics on Suspension Coils
The MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Per the total summary, this is true. When the cars are grouped by their lot, Lot 3’s variance exceeds this.

Total summary:
![alt text](https://github.com/Betsy-Kalkwarf/MechaCar_Statistical_Analysis/blob/main/total_summary.png)

Lot summary:
![alt text](https://github.com/Betsy-Kalkwarf/MechaCar_Statistical_Analysis/blob/main/lot_summary.png)

##T-Tests on Suspension Coils
I ran t-tests looking at suspension data. Per MechaCar, the PSI has a mean of 1,500 pounds per square inch. As you can see in the results below, when comparing the population to the MechaCar stated PSI mean, there is not enough evidence to reject the null hypothesis. Therefore, it can be concluded that the data matches MechaCar’s claims.

t-test (Population to Expected Mean)(0.06028)
![alt text](https://github.com/Betsy-Kalkwarf/MechaCar_Statistical_Analysis/blob/main/population.png)
Next, I compared the average mean PSI in each of the lots, to the overall population. From the t-tests, the cars from each Lot have a mean similar to the population. Each p-value is above the significance level of 0.05.
t-test (Lot 1 to Population)(0.06613)
![alt text](https://github.com/Betsy-Kalkwarf/MechaCar_Statistical_Analysis/blob/main/Lot1.png)

t-test (Lot 2 to Population)(0.06026)
![alt text](https://github.com/Betsy-Kalkwarf/MechaCar_Statistical_Analysis/blob/main/Lot2.png)

t-test (Lot 3 to Population)(0.1818)
![alt text](https://github.com/Betsy-Kalkwarf/MechaCar_Statistical_Analysis/blob/main/Lot3.png)



##Study Design: MechaCar vs Competition
To compare MechaCar with the competition a study can be created to compare maintenance of their cars. The amount of maintenance costs incurred should be compared to MechaCar’s projections.  I do not know the exact way a car company projects maintenance costs but I would compare this value to true values of their cars.

Null hypothesis: The projected mean of maintenance costs will not differ from the mean of maintenance costs in a sample of MechaCar cars.

Alternative hypothesis: The projected mean of maintenance costs will not be less than the mean of maintenance costs in a sample of MechaCar cars.

I would run a t-test to compare the means of the projected maintenance costs with the actual costs of a sample. Comparing means requires a t-test.

Data needed:
Maintenance costs incurred from a sample of MechaCar cars for a specified timeframe
Projected maintenance costs from MechaCar
(I’m not sure if or how this type of metric is tracked but it is something I would want to know before purchasing a MechaCar car..)


