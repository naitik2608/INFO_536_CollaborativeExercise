# Global Terrorism Database Collaborative Analysis

# Load necessary libraries
library(dplyr)
library(ggplot2)

# Load the dataset
data <- read.csv("globalterrorismdb_0718dist.csv", 
                     stringsAsFactors = FALSE)
#Author: Data Wrangling was done by Vishnu Rendla

#Seperating Successful vs unsuccessful attacks
colnames(data)
successful_attacks <- data[data$success == 1, ]
unsuccessful_attacks <- data[data$success == 0, ]

# Calculate total attacks and success rate
total_attacks <- nrow(data)
num_successful <- nrow(successful_attacks)
success_rate <- (num_successful / total_attacks) * 100

# Display the success rate
success_rate
#Author: John Calculated the success rate of the attacks done by the terrorists.

#Visualizing

#Author: Naitik did the visualization part of the success and failure of the attacks.

attack_counts <- c(nrow(successful_attacks), nrow(unsuccessful_attacks))
labels <- c("Success", "Failure")
pie(attack_counts, labels = labels, main = "Attack Success Rate")


# Alternating way

library(ggplot2)

# Create a summary dataframe
attack_summary <- data.frame(
  attack_status = c("Success", "Failure"),
  count = c(nrow(successful_attacks), nrow(unsuccessful_attacks))
)

ggplot(attack_summary, aes(x = "", y = count, fill = attack_status)) +
  geom_bar(stat = "identity", width = 1) +
  coord_polar("y", start = 0) +
  theme_void() +
  labs(title = "Attack Success Rate")
