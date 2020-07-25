
library(dygraphs)

dyMultiColumn <- function(dygraph) {
  dyPlotter(dygraph = dygraph,
            name = "MultiColumn",
            path = system.file("plotters/multicolumn.js",
                               package = "dygraphs"))
}

lungDeaths <- cbind(mdeaths, fdeaths)
dygraph(lungDeaths) %>%
  dyRangeSelector() %>%
  dyMultiColumn()