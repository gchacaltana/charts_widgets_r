# Instalación de highcharter
# install.packages("highcharter")
library(highcharter)
data(GNI2014, package = "treemap")

head(GNI2014)

summary(GNI2014)

hcmap(
  "custom/world-robinson-lowres", 
  data = GNI2014,
  name = "Ingreso nacional bruto per capita ($)", 
  value = "GNI",
  borderWidth = 1,
  nullColor = "#d3d3d3",
  joinBy = c("iso-a3", "iso3")
) %>%
  hc_colorAxis(
    stops = color_stops(colors = viridisLite::inferno(10, begin = 0.1)),
    type = "logarithmic"
  ) 