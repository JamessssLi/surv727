# SURV727 GitHub Practice Exercise

This repository is a simple GitHub exercise for students learning the basic collaboration workflow.

## Goal

You will practice the standard GitHub flow:

1. Fork the repository
2. Create your own branch
3. Make a small change
4. Commit your work
5. Open a pull request
6. Review the request before it is merged

## Why branches matter

You should not work directly on the main branch in a team project. Instead, create a branch for your own work, such as:

- student-name-mean-score
- sam-mean-score

This keeps the main branch clean and makes it easier to review changes before merging.

## Repository layout

- data/public_data.csv - public example dataset
- data/secret_data.csv - local-only secret data file
- analysis.R - starter R script for this exercise
- .gitignore - tells Git to ignore the secret file

## Important: secret data

The file `data/secret_data.csv` is intentionally not uploaded to GitHub. It represents sensitive or private data that should stay on your own computer.

This is why `.gitignore` matters. Git ignores files listed there, so they are not pushed to GitHub. In a real project, you might keep confidential data locally and only share the public-safe version.

## Your class exercise

In this assignment, you will work with the public dataset and compute the mean score.

1. Fork this repository to your own GitHub account.
2. Create a new branch in your fork.
3. Open the file analysis.R.
4. Add the code to calculate the mean score for the public data.
5. Commit your change on your branch.
6. Open a pull request back to the original repository.
7. In the pull request, briefly describe what you changed.

## Starter R code

Use this file as your starting point:

```r
public_data <- read.csv("data/public_data.csv")

# Add your code here to calculate the mean score
# Example:
# mean_score <- mean(public_data$score)
# cat("Mean score:", round(mean_score, 2), "\n")
```

## What to submit

Your pull request should be a small, clear change. It should show the mean score calculation and nothing unrelated.

This is a basic example of how real GitHub collaboration works in practice.
