#!/bin/bash

# Develop Lexical locally with symlinks

# Exit script on error
set -e

# Check if the script is run from the project root
if [ ! -d "node_modules" ]; then
    echo "Error: node_modules directory not found. Please run this script from the project root."
    exit 1
fi

# Function to remove and link a package
link_package() {
    local package=$1
    # npm link $package
    ls -s $package ../lexical/packages/$package/dist
    echo "Linked $package with npm link"
}

# List of lexical packages to link
packages=(
  "lexical"
  "lexical-html"
  "lexical-markdown"
  "lexical-playground"
  "lexical-table"
  "lexical-yjs"
  "lexical-clipboard"
  "lexical-hashtag"
  "lexical-link"
  "lexical-offset"
  "lexical-react"
  "lexical-text"
  "lexical-code"
  "lexical-headless"
  "lexical-list"
  "lexical-overflow"
  "lexical-rich-text"
  "lexical-utils"
  "lexical-dragon"
  "lexical-history"
  "lexical-mark"
  "lexical-plain-text"
  "lexical-selection"
  "lexical-website"
  "shared"
)

# Remove and link each package
for package in "${packages[@]}"; do
    link_package "$package"
done

echo "All packages have been successfully linked."
