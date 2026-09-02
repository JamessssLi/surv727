# GitHub Workflow Commands for the Exercise

## 1. Fork the repository

On GitHub:

1. Open the original repository
2. Click Fork
3. Choose your own GitHub account
4. Wait for the fork to be created

## 2. Clone the fork to your computer

```bash
git clone https://github.com/YOUR_USERNAME/REPO_NAME.git
cd REPO_NAME
```

## 3. Create a branch

```bash
git checkout -b mean-score
```

Or, if you prefer to be explicit:

```bash
git switch -c mean-score
```

## 4. Make the change in RStudio

Open `analysis.R` and add the mean calculation.

Example:

```r
public_data <- read.csv("data/public_data.csv")
mean_score <- mean(public_data$score)
cat("Mean score:", round(mean_score, 2), "\n")
```

## 5. Save the file

In RStudio, save the updated script.

## 6. Check status

```bash
git status
```

## 7. Stage the file

```bash
git add analysis.R
```

## 8. Commit the change

```bash
git commit -m "Add mean score calculation"
```

## 9. Push the branch to your fork

```bash
git push origin mean-score
```

## 10. Open a pull request on GitHub

In the browser:

1. Go to your fork on GitHub
2. Click Compare & pull request
3. Set the base repository to the original instructor repo
4. Set the base branch to `main`
5. Set the compare branch to `mean-score`
6. Click Create pull request

## 11. After the PR is reviewed

The instructor can merge the pull request from the fork branch into the main branch.

## 12. Optional: update your local repo after merge

If the instructor merges the PR, update your local repo:

```bash
git checkout main
git pull origin main
```

Then delete the old branch if desired:

```bash
git branch -d mean-score
```

## Instructor note

The important part is that the student opens the pull request from their fork branch to the original repository, not from a branch on the original repo itself.

This is the standard collaborative GitHub workflow.
