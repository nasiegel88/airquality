# Install packages not listed on conda

if(!require(MazamaSpatialUtils)){install_version("MazamaSpatialUtils", "0.7.6");library("MazamaSpatialUtils")}

if(!require(PWFSLSmoke)){install_version("PWFSLSmoke", "1.2.117");library("PWFSLSmoke")}
