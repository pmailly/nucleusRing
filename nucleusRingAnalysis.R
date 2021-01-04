#install missing libraries
requiredPackages = c("base", "readbulk", "dplyr", "plyr", "ggplot2", "ggpubr", "rstudioapi", "svDialogs", "stringi", "cowplot")
for(i in requiredPackages){
  if(!require(i,character.only = TRUE)) install.packages(i)
  library(i,character.only = TRUE)
}
r<code>

inDir <- selectDirectory(caption = "Select profile data directory", label = "Select", path = NULL)
files <- list.files(path = inDir, pattern = "*.xls", full.names=FALSE)


for (i in seq_along(files)) {
  file <- basename(file_path_sans_ext(files[i]))
  fmndata <- read_excel(paste0(inDir,files[i]))