
#-------------- Functions --------------#

# Function to check and install packages
check.packages <- function(pkg){
  new.pkg <- pkg[!(pkg %in% installed.packages()[, "Package"])]
  if (length(new.pkg)) 
    install.packages(new.pkg, dependencies = TRUE)
  sapply(pkg, require, character.only = TRUE)
}

#-------------- Packages --------------#

# Checks and installs packages
packages <- c("leaflet", "htmltools", "htmlwidgets", "fontawesome")
check.packages(packages)

# Load data
work <- read.csv("C:/Users/44797/Desktop/Leaflet-Locations.csv")
head(work)

# Create labels
labels <- sprintf(
  "<strong>%s </strong><br/> %s <em><br/> %s",
  work$Location, work$Link, "Right click &#8594 Open in new tab" # Right arrow
) %>% lapply(htmltools::HTML)

# Create Icons
iconset2 <- awesomeIconList(
  Education = makeAwesomeIcon(text = fa("fas fa-graduation-cap"), markerColor = "darkred"),
  Employment = makeAwesomeIcon(text = fa("briefcase"), markerColor = "darkpurple"),
  Research = makeAwesomeIcon(text = fa("book-open"), markerColor = "blue")
)

# Create map
(work_map <- leaflet(work) %>% 
    addProviderTiles(providers$Stamen.Watercolor) %>%
    addProviderTiles(providers$Stamen.TerrainLabels) %>%
    #addMarkers(~Lon, ~Lat, popup = ~labels))
    addAwesomeMarkers(~Lon, ~Lat, icon = ~iconset2[icon], popup = ~labels))

# Creates widget path
widget_path <- file.path("C:/Users/44797/Desktop/Repo/academic-kickstart/static/leaflet")
dir.create(widget_path)

# Saves map
saveWidget(work_map, file.path(widget_path,"work_map.html"))
