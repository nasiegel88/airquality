# Install packages not listed on conda
read.lib <- list(
  'tidyverse',
  'devtools'
)
lapply(read.lib, function(x) {suppressPackageStartupMessages(library(x))})

if(!require(MazamaSpatialUtils)){install_version("MazamaSpatialUtils", "0.7.6");suppressPackageStartupMessages(library("MazamaSpatialUtils"))}

if(!require(PWFSLSmoke)){install_version("PWFSLSmoke", "1.2.117");suppressPackageStartupMessages(library("PWFSLSmoke"))}
