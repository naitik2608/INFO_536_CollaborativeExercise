#Author: JohnKang
#Date 2024-09-12
#Group collaboration assignment_Team6
#Part2_Calculate total attacks and success rate
total_attacks <- nrow(data)
num_successful <- nrow(successful_attacks)
success_rate <- (num_successful / total_attacks) * 100

# Display the success rate
success_rate