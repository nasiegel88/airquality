export.table <- 
function(table, filename) {
  suppressPackageStartupMessages(library(openxlsx))
  suppressPackageStartupMessages(library(tidyverse))
  dir.create(file.path(getwd(), "01-Results"))
  file <- file.path(getwd(), "01-Results", filename)
  write.table(table, file = paste0(file, ".txt"), quote = F,
              sep = "\t", row.names = F)
  openxlsx::write.xlsx(table, paste0(file, ".xlsx"), rowNames=TRUE)
}