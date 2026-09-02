# Instructor Notes: GitHub Fork and Pull Request Exercise

## Goal of the exercise

This exercise teaches students the basic collaborative GitHub workflow in a low-risk, beginner-friendly way.

Students will:

1. Fork the instructor repository
2. Create a new branch
3. Edit the R script to calculate the mean score
4. Commit the change
5. Push the branch to their fork
6. Open a pull request to the original repository
7. Review and merge the change in the upstream repo

## Why this is a good beginner exercise

This exercise introduces the core GitHub concepts without requiring students to work with a complicated project.

It demonstrates:

- forking as a way to copy a repository
- branching as a way to isolate work
- commits as recorded changes
- pull requests as a review and approval mechanism
- merging as the final step that updates the main branch

## Recommended teaching flow

### Step 1: Show the original repo

Explain that the original GitHub repository is the instructor's main project. Students should not work directly on the instructor's main branch.

### Step 2: Students fork the repo

Each student creates their own copy of the repository under their own GitHub account.

This is important because:

- it keeps the instructor repo clean
- it gives each student their own personal working copy
- it mirrors how real-world collaboration often works

### Step 3: Students create a new branch

Students should create a branch such as:

- mean-score
- student-name-mean-score

This branch is where they will add the code for the mean calculation.

### Step 4: Students add the mean calculation

Students work in the file `analysis.R` and add the code needed to calculate the mean of the `score` variable.

Example:

```r
public_data <- read.csv("data/public_data.csv")
mean_score <- mean(public_data$score)
cat("Mean score:", round(mean_score, 2), "\n")
```

### Step 5: Students commit and push

After they finish the update, they commit the file to their branch and push it to their fork.

### Step 6: Students open a pull request

The pull request should be opened from the student fork to the instructor repo.

The PR should show the change as a small, specific improvement.

### Step 7: Instructor reviews and merges

The instructor can review the code in the pull request, ask for edits if needed, and then merge it into the main branch.

## Teaching message for students

A good way to explain this is:

> “We do not edit the instructor’s main branch directly. Instead, each student creates a separate branch in their fork, makes a small change, and then opens a pull request so the change can be reviewed before it is merged.”

## Recommended student branch name

Use a simple branch name like:

- mean-score

or

- firstname-mean-score

This keeps the exercise easy and consistent.

## Instructor workflow after merge

Once the student PR is merged, the instructor can tell students:

- their change is now part of the main project
- they have successfully completed the GitHub collaboration workflow
- this is the same pattern used in real software projects

## Important GitHub concept

Students should understand that:

- the original GitHub repo is the upstream repo
- their fork is their copy
- their branch is their work area
- a pull request moves code from the fork branch into the upstream main branch

## Final note

This exercise is intentionally small. The point is not to teach advanced Git, but to show the flow clearly and correctly.

The main lesson is:

fork → branch → edit → commit → push → pull request → merge
