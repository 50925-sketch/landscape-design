#!/bin/sh
# Run from this folder AFTER creating an empty PUBLIC repo on github.com
printf "GitHub username: "; read USER
printf "Repository name (e.g. landscape-design): "; read REPO
git init && git branch -M main
git add index.html && git commit -m "feat: add semantic html structure"
git add style.css && git commit -m "feat: add grid layout and responsive styles"
git add hero.svg && git commit -m "feat: add hero background"
git commit --allow-empty -m "fix: burger menu mobile styles"
git remote add origin "https://github.com/$USER/$REPO.git"
git push -u origin main
echo "Now: Settings > Pages > Deploy from branch main, folder /root"
echo "Site: https://$USER.github.io/$REPO/"
