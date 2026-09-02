# SURV727 GitHub Classroom Demo

This repository is designed for a simple GitHub teaching exercise.

## Learning goals

- Fork a repository
- Make a small change in GitHub
- Open a pull request
- Review a pull request
- Understand why some files should stay local with `.gitignore`

## Repository layout

- `data/public_data.csv` - public example dataset, tracked by Git
- `data/secret_data.csv` - local-only dataset, intentionally ignored by Git
- `analysis.R` - example R script that computes the mean score
- `.gitignore` - tells Git to ignore the secret file

## Why the secret file is ignored

The `data/secret_data.csv` file is used to illustrate a sensitive dataset that should not be uploaded to GitHub. It may contain more detailed or identifying information than the public sample. You can still compute summary statistics such as a mean locally, but you only share the safe public version in the repo.

This is the key idea behind `.gitignore`: keep sensitive files on your machine, and only upload data that is safe to make public.

## Class exercise

1. Fork this repository into your own GitHub account.
2. Create a new branch.
3. Update the R code in `analysis.R` so it computes the mean score for the public dataset.
4. Commit the change.
5. Open a pull request back to the main repository.
6. In the pull request, briefly explain what you changed and what the mean score is.

This is a small and realistic example of how GitHub collaboration works in practice.

## Example R code

```r
public_data <- read.csv("data/public_data.csv")
mean_score <- mean(public_data$score)
cat("Mean score:", round(mean_score, 2), "\n")
```

## Instructor note

The real teaching point is not that the secret file is used in the repo. It is that some data should never be pushed to GitHub. A student can compute a summary on a secret dataset locally and then report only the public result, while the raw sensitive file remains off the repository.
