
format_menage_data <- function(MatisseParams){
  
  suppressMessages(library(tidyverse , warn.conflicts=F , quietly = T))
  suppressMessages(library(car , warn.conflicts=F , quietly = T))
  suppressMessages(library(readxl, warn.conflicts=F , quietly = T))
  
  #Data
  menage <- suppressWarnings(suppressMessages(as.data.frame(read_excel(MatisseFiles$menage_bdf_xl) , stringsAsFactors=F)))

  #Functions
  menage_forme <- format_BDF(menage, save_intermed_file = FALSE)
  print(nrow(menage_forme))
  menage_forme <- format_energie(menage_forme, save_intermed_file = FALSE)
  print(nrow(menage_forme))
  menage_forme <- estimate_DPE(menage, save_intermed_file = FALSE)
  print(nrow(menage_forme))
  menage_forme <- clean_data_GT(menage_forme, save_intermed_file = FALSE)
  print(nrow(menage_forme))
  
  
  
  
  
} 


