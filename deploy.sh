#!/bin/bash

# Portfolio Deployment Script for GitHub Pages
# Make sure you have git configured and the repository set up

echo "🚀 Starting portfolio deployment..."

# Check if git is initialized
if [ ! -d ".git" ]; then
    echo "❌ Git repository not found. Please initialize git first:"
    echo "   git init"
    echo "   git remote add origin https://github.com/yourusername/Project_Portfolio.git"
    exit 1
fi

# Add all files
echo "📁 Adding files to git..."
git add .

# Check if there are changes to commit
if git diff --staged --quiet; then
    echo "ℹ️  No changes to commit"
else
    # Commit with timestamp
    TIMESTAMP=$(date "+%Y-%m-%d %H:%M:%S")
    echo "💾 Committing changes..."
    git commit -m "Portfolio update - $TIMESTAMP"
fi

# Push to main branch
echo "⬆️  Pushing to GitHub..."
git push origin main

echo "✅ Deployment complete!"
echo ""
echo "📋 Next steps:"
echo "1. Go to your GitHub repository settings"
echo "2. Navigate to 'Pages' section"
echo "3. Select 'Deploy from a branch' and choose 'main'"
echo "4. Your portfolio will be available at:"
echo "   https://yourusername.github.io/Project_Portfolio"
echo ""
echo "🎉 Happy coding!"
