data("karate", package = "igraphdata")
filename <- "./cv/pic.jpg"
jpeg(filename = filename, width = 2.5, height = 2.5, units = "in",
     quality = 95, res = 300, type = "cairo")
par(mar = c(0, 0, 0, 0),
    oma = c(1.5, 1.5, 1.5, 1.5))

# create color pallet based on unique values for vertex attribute
pal <- c("#ef8e26", "#3026ef")
set.seed(12)
igraph::plot.igraph(karate,
     vertex.size = 9,
     vertex.label = "",
     vertex.color =  pal[as.numeric(as.factor(igraph::vertex_attr(karate, "Faction")))],
     #vertex.frame.color = NA,
     layout = igraph::layout_with_fr,
     asp = 0,
     main = "",
     rescale = T
)
dev.off()
