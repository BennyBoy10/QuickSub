#!/bin/bash

rm -rf "123-Old"
mv "123" "123-Old"

cd
cd /data/data/com.termux/files/home/storage/shared/Lapi/HTML/More/GitHub

cp -rf "123" /data/data/com.termux/files/home/GitHub

echo ""
echo -e "\e[32mDone copying 123! \e[0m"
echo ""

cd
cd GitHub
cd 123

git init
git add .
git commit -m "Updated 123"
git branch -M main

# Check if remote exists
if git remote | grep -q origin; then
  git remote remove origin  # Remove existing remote
fi

git remote add origin https://github.com/BennyBoy10/123.git
#git push -u origin main
git push -u origin main --force

echo ""
echo -e "\e[32mDone with 123! \e[0m"
echo ""