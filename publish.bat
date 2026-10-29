@echo off
REM Run from this folder AFTER creating an empty PUBLIC repo on github.com
set /p USER=GitHub username: 
set /p REPO=Repository name (e.g. landscape-design): 
git init
git branch -M main
git add index.html
git commit -m "feat: add semantic html structure"
git add style.css
git commit -m "feat: add grid layout and responsive styles"
git add hero.svg
git commit -m "feat: add hero background"
git add .
git commit -m "fix: burger menu mobile styles" --allow-empty
git remote add origin https://github.com/%USER%/%REPO%.git
git push -u origin main
echo.
echo Now: GitHub repo - Settings - Pages - Deploy from branch main, folder /root
echo Site: https://%USER%.github.io/%REPO%/
pause
