#' Plot met stations in the CALMET domain
#' @description Plot all surface meteorological stations in CALMET domain
#' @export calmet_plot_domain
#' @examples
#' \dontrun{
#' # Plot all stations in NCDC database in the defined CALMET domain
#' calmet_plot_domain()
#'}

calmet_plot_domain <- function(){
  
  # Add require statements
  require(ggmap)
  require(raster)
  
  # Get lat/long extents
  extent_in_lat_long <- extent(
    as.numeric(unlist(read.table(file = "define.calmet.domain.out")))[1],
    as.numeric(unlist(read.table(file = "define.calmet.domain.out")))[2],
    as.numeric(unlist(read.table(file = "define.calmet.domain.out")))[4],
    as.numeric(unlist(read.table(file = "define.calmet.domain.out")))[3])
  
  #Determine the center of the map using the mid-points of the bounding lat/long coordinates
  mid_pt_lat <- (as.numeric(unlist(read.table(file = "define.calmet.domain.out")))[3] +
                   as.numeric(unlist(read.table(file = "define.calmet.domain.out")))[4] ) / 2
  mid_pt_long <- (as.numeric(unlist(read.table(file = "define.calmet.domain.out")))[1] +
                    as.numeric(unlist(read.table(file = "define.calmet.domain.out")))[2] ) / 2
  
  # Define the map using the 'ggmap' package
  the_map <- get_map(location = c(mid_pt_long, mid_pt_lat), zoom = 10, maptype = 'roadmap')
  
  # Plot the map with overlay points for the stations, reading data from the 'stations.csv' file
  map <- ggmap(the_map) + 
    geom_point(data = read.csv("stations.csv", header = TRUE),
               aes(x = read.csv("stations.csv", header = TRUE)$LONG,
                   y = read.csv("stations.csv", header = TRUE)$LAT),
               size = 3) +
    geom_text(data = read.csv("stations.csv", header = TRUE),
              aes(x = read.csv("stations.csv", header = TRUE)$LONG + 0.005, 
                  y = read.csv("stations.csv", header = TRUE)$LAT, label = USAFID,
                  hjust = 0, vjust = 0), size = 3) +
    coord_equal() +
    labs(x = "Longitude") +
    labs(y = "Latitude") +
    labs(title = "Plot of Surface Stations in Meteorological Domain")
  
  map
  
}
