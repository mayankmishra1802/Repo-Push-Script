#!/bin/bash

# Set variables
REPO_URL="https://github.com/mayankmishra1802/game.git"
DIST_DIR="game"

# Check if the dist directory exists
if [ ! -d "$DIST_DIR" ]; then
  echo "Error: Directory $DIST_DIR does not exist."
  exit 1
fi

# Go to the dist folder
cd $DIST_DIR

# Initialize a new Git repository if not already present
if [ ! -d ".git" ]; then
  git init
fi

# Add all files to the staging area
git add .

# Commit the changes
git commit -m "push repo"

# Rename master branch to main
git branch -M main

# Add remote repository (if not already added)
git remote add origin $REPO_URL

# Push changes to the main branch
git push -u origin main

# Come back to the root directory
cd ..

echo "Repo pushed to GitHub successfully"
