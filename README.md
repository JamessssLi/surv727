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
- `analysis.R` - example R script
- `.gitignore` - tells Git to ignore the secret file

## Why the secret file is ignored

The `data/secret_data.csv` file is used to illustrate a sensitive dataset that should not be uploaded to GitHub. It contains a local-only version of the data that instructors can keep on their machine.

## Class exercise

1. Fork this repository into your own GitHub account.
2. Create a new branch.
3. Edit `data/public_data.csv` by removing one row.
4. Commit the change.
5. Open a pull request back to the main repository.
6. In the pull request, explain what row was removed and why.

This is a very small and realistic example of how GitHub collaboration works in practice.

## Example R code

```r
public_data <- read.csv("data/public_data.csv")
print(public_data)
```

To access the local-only file if it exists:

```r
secret_path <- "data/secret_data.csv"
if (file.exists(secret_path)) {
  secret_data <- read.csv(secret_path)
  print(secret_data)
} else {
  message("No local secret data file found.")
}
```

## Instructor note

The key teaching point is that Git only tracks files that are not ignored. The public example data is safe to share, while the secret data stays private on the local machine.
