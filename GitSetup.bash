git init
read -p "Enter your email for Github: " email
git config --global user.email $email
read -p "Enter your repository's address (Shift + Ins to paste): " address
git clone $address master
git remote add server $address
git pull server master
git push --set-upstream server master
bash GitPush.bash
