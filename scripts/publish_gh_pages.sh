#!/usr/bin/env bash

# Removes the folder if it already exists.
rm -rf .deploy_git/

# Builds the GitBook project as a static website.
gitbook build ./ ./.deploy_git/
printf "\nThe site has been built successfully!\n\n"

# Traverses to the output folder.
cd .deploy_git/

# Initializes an empty Git repository.
git init

# Adds, commits and force-pushes everything to the gh-pages branch.
git add .
git commit -m "Site updated at $(date '+%Y-%m-%d %H:%M:%S')"
git push -u git@github.com:yunpengn/CertAWS.git HEAD:gh-pages --force

# Outputs a message.
printf "\nThe site has been published to GitHub Pages successfully!\n"
