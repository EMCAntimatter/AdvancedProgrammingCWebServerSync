!/bin/bash
git add *
read -p "Enter your commit message: " address
git commit -m $address
git push