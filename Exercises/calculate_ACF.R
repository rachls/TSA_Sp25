#CALCULATE THE ACF
#Get timeseries and convert to ts object
temp <- c(14.2,16.4,11.9,15.2,18.5,22.1,19.4,25.1,23.4,18.1,22.6,17.2) %>%
  ts()

temp_acf <- acf(temp,lag=4)

#different from excel. R treats as one variable whereas excel treats it as 2 variables.
#Therefore, excel has different means for each lag and r has the same mean. Since we are
#assuming the series is stationary (mean does not change), this is not what we want in excel.
#Excel sheet with full calculations using the formula will be released.
