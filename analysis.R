# Global Terrorism Database Collaborative Analysis

# Load necessary libraries
library(dplyr)
library(ggplot2)

# Load the dataset
gtd_data <- read.csv("globalterrorismdb_0718dist.csv", 
                     stringsAsFactors = FALSE)

# Basic data exploration
glimpse(gtd_data)


#Seperating Successful vs unsuccessful attacks

colnames(gtd_data)
successful_attacks <- gtd_data[data$success == 1, ]
unsuccessful_attacks <- gtd_data[data$success == 0, ]
