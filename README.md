# Invoke-R-from-SAS-and-Ordinal-Logit-Model-Using-BTS-Data-
Developed a Ordinal Logit Model Using BTS Data and invoke R from SAS to run the same model to compare results of both Tools

1.	Used appropriate SAS data step syntax to read the March, 2015 BTS file into a SAS dataset named BTS201503.
Created lag variables for ArrDelay and Cancelled. 
Used an appropriate PROC to estimate an Ordinal Logit model for DepDelayClass using the following independent variables:
CRSDepTime seqnum ArrDelayLagInd ArrDelayLag ArrDelayLagCum ArrDelayLag2 CancelledLag1

Estimated a Multinomial logistic regression model with the same data, same reference level, and same filter criteria.

2.	Used appropriate SAS data step syntax to read the O'Hare 2015 weather file (Weather_ord_2015_miss.txt) into a SAS dataset. 
Created a new dataset named BTS201503WTHR that MERGEs the partial weather file to the March, 2015 BTS file in a DATA step-Include only observations with ORIGIN="ORD" in the new dataset.
Created a new dataset named BTS201503WTHRIMP with 12 iterations of multiple imputation values for missing values of snow, tempmin, and tempmax.
Estimated an OLS regression model for DepDelay, using the IVs from the previous LOGISTIC model, plus tempmin, tempmax, and snow.

Evaluated the Multiple Imputation parameter estimates for tempmin, tempmax, and snow.

3.	Installed a supported version of R to invoke from a SAS IML session. 
