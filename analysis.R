# Example R script for a GitHub classroom demo

public_data <- read.csv("data/public_data.csv")
mean_score <- mean(public_data$score)

cat("Mean score:", round(mean_score, 2), "\n")
