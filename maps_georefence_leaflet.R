# Instalamos el paquete leaflet
# install.packages("leaflet")

# Cargamos la libreria
library(leaflet)

# Creamos las variables de Latitud y Longitud con los valores de ubicación 
# de la universidad ricardo palma

lat <- -12.1318424
lng <- -76.9818354

# Creamos una variable donde se almancenará el mapa de georeferencia
m <- leaflet() %>%
  addTiles() %>%
  addMarkers(lat=lat,lng=lng, popup="Universidad Ricardo Palma")
m