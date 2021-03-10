# First load the EMLassemblyline package
library(EMLassemblyline)

# View documentation for this function
?template_core_metadata

# Import templates for an example dataset licensed under CC0, with 2 tables.
template_core_metadata(path = ".", 
                 license = "CCBY")

template_table_attributes(path = ".",data.table = c("Delta_outflow_2018.csv",
                                "plankton_2018_smscg.csv",
                                "stations.csv",
                                "WaterQuality_SMSCG_2018.csv",
                                "EDSMsmelt_summer_2018.csv",
                                "TNSsmelt_2001_2018.csv",
                                "salinity_modeled_2018.csv"))


#template_geographic_coverage(path = ".", data.path = ".", data.table = "stations.csv", 
#                    lat.col = "Latitude", lon.col = "Longitude", site.col = "Station")

template_categorical_variables(".")


make_eml(
  path = ".",
  dataset.title = "Interagency Ecological Program: Water quality, fish, and zooplankton monitoring and modeling to support the 2018 Suisun Marsh Salinity Control Gates Summer Action",
  temporal.coverage = c('2002-08-01', '2018-11-01'),
  geographic.description = "San Fransisco Estuary, Suisun Marsh, Sacramento River", 
  geographic.coordinates = c("38.1869", "-122.0527","38.03281",  "-121.8388"), 
  maintenance.description = "complete", 
  data.table = c("Delta_outflow_2018.csv", "plankton_2018_smscg.csv", "WaterQuality_SMSCG_2018.csv",
                 "EDSMsmelt_summer_2018.csv", "TNSsmelt_2001_2018.csv", "salinity_modeled_2018.csv", 
                 "stations.csv"), 
  data.table.name = c("Delta Outflow, 2018 and historical", "Zooplankton 2018", "Water Quality, 2018 and historical",
                      "EDSM Delta Smelt catch 2018", "Summer Townet Delta Smelt catch, 2002-2017", "UNTRIM model salinity output", 
                      "Sampling stations"),
  data.table.description = c("Modeled Delta Outflow from DWR's Dayflow program", 
                             "Zooplankton biomass and species composition collected in Suisun Marsh and the Sacramento River in summer and fall of 2018", 
                             "Water Quality collected by continuous YSI sondes from three stations in Montezuma Slough",
                             "Delta Smelt caught by the Enhanced Delta Smelt Monitoring Program in various regions of the estuary in summer of 2018", 
                             "Delta Smelt caught by the Summer Townet survey in August in Montezuma Slough, 2002-2017", 
                             "UNTRIM model salinity output", 
                             "Sampling stations with regions and GPS coordinates"), 
  other.entity = c("Percent_time_lt6psu_100mGrid_UTM_2018Action_01_Summer Operation.asc", 
                   "Percent_time_lt6psu_100mGrid_UTM_NoAction_01_Summer Operation.asc",
                   "ShorelineShapefile.zip"),
  other.entity.name = c("Action Salinity Raster", 
                        "No Action Salinity Raster",
                        "Shoreline mask for raster map"),
  other.entity.description = c("Raster map showing the percent of time each pixel (100m grid) has a salinity less than 6 PSU for a scenario witha summer SMSCG action", 
                               "Raster map showing the percent of time each pixel (100m grid) has a salinity less than 6 PSU for a scenario without a summer SMSCG action",
                               "Shoreline mask for raster map"),
  provenance =  c("edi.522.1", "edi.415.1"),
  user.id = "iep",
  user.domain = "EDI"

)
