# Install packages not listed on conda
if(!require(azamaSpatialUtils)){install.packages("MazamaSpatialUtils");library("MazamaSpatialUtils")}
if(!require(PWFSLSmoke)){install.packages("PWFSLSmoke");library("PWFSLSmoke")}
#if(!require(devtools)){install.packages("devtools");library("devtools")}
#if(!require(sf)){install.packages("sf");library("sf")}
#if(!require(leaflet)){install.packages("leaflet");library("leaflet")}
#if(!require(raster)){install.packages("https://cran.r-#project.org/src/contrib/Archive/raster/aster_2.5-8.tar.gz", repos = NULL, type="source");library("raster")}
#if(!require(rlang)){install.packages("rlang");library("rlang")}
