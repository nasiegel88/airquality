# Install packages not listed on conda

if(!require(MazamaSpatialUtils)){suppressPackageStartupMessages(install_version("MazamaSpatialUtils", "0.7.6"));library("MazamaSpatialUtils")}

if(!require(PWFSLSmoke)){suppressPackageStartupMessages(install_version("PWFSLSmoke", "1.2.117"));library("PWFSLSmoke")}
