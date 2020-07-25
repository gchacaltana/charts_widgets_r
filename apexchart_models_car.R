# Instalación de apexcharter
# install.packages("apexcharter")

library(apexcharter)
data(mpg, package = "ggplot2")

head(mpg)

summary(mpg)

n_manufac <- dplyr::count(mpg, manufacturer)

apexchart() %>% 
  ax_chart(type = "bar") %>% 
  ax_plotOptions(bar = bar_opts(
    horizontal = FALSE,
    endingShape = "flat",
    columnWidth = "80%",
    dataLabels = list(
      position = "top"
    ))
  ) %>% 
  ax_grid(
    show = TRUE,
    position = "front",
    borderColor = "#FFF"
  ) %>% 
  ax_series(list(
    name = "Cantidad",
    data = n_manufac$n
  )) %>% 
  ax_colors("#1E90FF") %>% 
  ax_xaxis(categories = n_manufac$manufacturer) %>% 
  ax_title(text = "Gráfico: Cantidad de modelos por marca de auto") %>% 
  ax_subtitle(text = "Dataset: mpg")