export.plot <-
function(plot, filename) {
  suppressPackageStartupMessages(library(openxlsx))
  suppressPackageStartupMessages(library(tidyverse))
    dir.create(file.path(getwd(), "01-Results"))
    file <- file.path(getwd(), "01-Results", paste(filename , ".png", sep=""))
    ggsave(filename= file, plot=plot, width=18, height=8, dpi=600)
}