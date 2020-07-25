install.packages("radarchart")

library(radarchart)

labs <- c("Comunicación", "Exploración de data", "Programación",
          "Tecnología",  "Diseñar", "Visualizador")

scores <- list(
  "Ana María" = c(8, 7, 4, 5, 3, 7),
  "José Vilchez" = c(9, 6, 6, 2, 6, 9),
  "Gonzalo Chacaltana" = c(8, 7, 9, 7, 8, 7)
)

chartJSRadar(scores = scores, labs = labs, maxScale = 10, main="Gráfico de puntaje de habilidades")