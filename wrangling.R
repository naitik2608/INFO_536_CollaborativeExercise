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