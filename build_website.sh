# Build the site
bundle exec jekyll build || { echo "Jekyll build failed"; exit 1; }

# Switch to gh-pages branch (create if doesn't exist)
git checkout gh-pages 2>/dev/null || git checkout --orphan gh-pages

# Remove old files
git rm -rf . || true

# Copy built site to branch root
cp -r _site/* ./

# Add .nojekyll to avoid GitHub Pages processing
touch .nojekyll

# Commit changes
git add .
git commit -m "Deploy static site $(date +'%Y-%m-%d %H:%M:%S')"

# Push to gh-pages branch
git push origin gh-pages --force

# Switch back to source branch
git checkout source