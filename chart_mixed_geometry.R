install.packages('c3')

library(c3)

data$c <- abs(rnorm(20) *10)
data$d <- abs(rnorm(20) *10)

data %>%
  c3() %>%
  c3_mixedGeom(type = 'bar', 
               stacked = c('b','d'),
               types = list(a='area',
                            c='spline')
  )
