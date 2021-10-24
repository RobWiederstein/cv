data("karate", package = "igraphdata")
filename <- "./cv/pic.jpg"
jpeg(filename = filename, width = 2.5, height = 2.5, units = "in",
     quality = 95, res = 300, type = "cairo")
par(mar = c(0, 0, 0, 0),
    oma = c(2, 2, 2, 2))
igraph::plot.igraph(karate,
     vertex.size = 8,
     vertex.label = "",
     layout = igraph::layout_nicely,
     asp = 1,
     main = "",
     rescale = T
)
dev.off()
