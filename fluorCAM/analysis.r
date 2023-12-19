library(tidyverse)
file_names_70eminus <- paste0("70eminus", 1:5, ".TXT") # create a vector of file names
list_of_dataframes <- lapply(file_names, function(x) read.csv(x, header = TRUE)) # read each file into a data frame
combined_df <- do.call(rbind, list_of_dataframes) # combine all data frames

kable(combined_df)
