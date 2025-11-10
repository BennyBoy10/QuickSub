#!/data/data/com.termux/files/usr/bin/bash
#!/bin/bash


echo ""
echo -e "\e[32mStarting... \e[0m"
echo ""

git init
git add .
git commit -m "Updated QuickSub-Git"
git branch -M main

# Check if remote exists
if git remote | grep -q origin; then
  git remote remove origin  # Remove existing remote
fi

git remote add origin https://github.com/BennyBoy10/QuickSub.git
#git push -u origin main
git push -u origin main --force

echo ""
echo -e "\e[32mDone!! \e[0m"
echo ""
