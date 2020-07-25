# Instalamos el paquete mapdeck
# install.packages("mapdeck")

library("mapdeck")

url <- 'https://raw.githubusercontent.com/plotly/datasets/master/2011_february_aa_flight_paths.csv'
flights <- read.csv(url)
flights$info <- paste0("<b>",flights$airport1, " - ", flights$airport2, "</b>")

# Creamos un token en sitio web de mapdeck
key <- 'pk.eyJ1IjoiZ2NoYWNhbHRhbmFiIiwiYSI6ImNrZDE2anpucTAzbjYyc245cnljMTVsdWoifQ.knce3cuS7BM9D_95RW1OZQ'

mapdeck(token = key, style = mapdeck_style('dark')) %>%
  add_arc(
    data = flights
    , origin = c("start_lon", "start_lat")
    , destination = c("end_lon", "end_lat")
    , stroke_from = "airport1"
    , stroke_to = "airport2"
    , tooltip = "info"
    , layer_id = 'arclayer'
  )