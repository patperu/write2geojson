
library(rgdal)
library(sp)
library(maptools)

x <-readShapePoly("pinucont.shp")

# delete 'x.geojson' if file exists
unlink("x.geojson")
writeOGR(x, "x.geojson", "x", driver = "GeoJSON")
