# Example R script for a GitHub classroom demo

public_data <- read.csv("data/public_data.csv")
print(public_data)

# This file is intentionally not tracked in Git.
# It will only be loaded if it exists locally.
secret_path <- "data/secret_data.csv"
if (file.exists(secret_path)) {
  secret_data <- read.csv(secret_path)
  print("Loaded local-only secret data.")
  print(secret_data)
} else {
  message("No local secret data file found. This file is ignored by Git.")
}
