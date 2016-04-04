library('rgdal')

shp2geojson <- function(infile, outfile) {

  filename <- sub("\\.[[:alnum:]]+$", "", basename(infile))

  x <- readOGR(dsn = dirname(infile), layer = filename, encoding = "UTF-8", verbose = FALSE)

  writeOGR(x, outfile, layer = "x", driver = "GeoJSON")

}

shp2geojson("pinucont.shp", "pinucont.geojson")
