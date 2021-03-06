install.packages('c3')

library(c3)

data <- data.frame(a = abs(rnorm(20) * 10),
                   b = abs(rnorm(20) * 10),
                   date = seq(as.Date("2019-01-01"), by = "month", length.out = 20))

c3(data)
