install.packages("dygraphs")

library(dygraphs)
lungDeaths <- cbind(mdeaths, fdeaths)
dygraph(lungDeaths)
dygraph(lungDeaths) %>% dyRangeSelector()