#!/bin/bash

# Define the root directory (you can modify this if your repo is in a different directory)
ROOT_DIR="docs"
STAGES=("Preparation" "Identification" "Containment" "Eradication" "Recovery" "Lessons_learned")
CATEGORIES=("general" "network" "email" "file" "process" "configuration" "identity" "cloud" "forensics")
TEMPLATES=("template1.md" "template2.md" "template3.md")

# Create the main docs directory
mkdir -p $ROOT_DIR

# Create the response_stages directories
for STAGE in "${STAGES[@]}"; do
    mkdir -p $ROOT_DIR/response_stages/$STAGE

    # Create the category directories under each response stage
    for CATEGORY in "${CATEGORIES[@]}"; do
        mkdir -p $ROOT_DIR/response_stages/$STAGE/$CATEGORY
        
        # Create template markdown files in each category
        for TEMPLATE in "${TEMPLATES[@]}"; do
            touch $ROOT_DIR/response_stages/$STAGE/$CATEGORY/$TEMPLATE
        done
    done
done

# Create the base markdown files
touch $ROOT_DIR/index.md
touch $ROOT_DIR/getting_started.md

echo "Directory structure and files created successfully!"
