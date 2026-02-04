#!/bin/bash
# Script to push changes to GitHub when connection is stable

echo "Attempting to push changes to GitHub..."
cd /Users/timber/Documents/jdding.github.io

# Check if we can reach GitHub
if ping -c 1 github.com > /dev/null 2>&1; then
    echo "GitHub is reachable, attempting push..."
    
    # Configure git to use merge strategy
    git config pull.rebase false
    
    # Try to pull first to sync with remote
    if git pull origin main; then
        echo "Successfully pulled remote changes"
        
        # Push our changes
        if git push origin main; then
            echo "Successfully pushed changes to GitHub!"
            echo "Your website updates are now live."
        else
            echo "Failed to push changes"
        fi
    else
        echo "Failed to pull remote changes"
    fi
else
    echo "Cannot reach GitHub. Please check your internet connection."
    echo "Once connection is stable, run this script again."
fi