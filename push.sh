#!/bin/bash
# push.sh



berry() {
git add .
git commit -a -m "Changed!"
git push -u origin bananapi-m2-berry
}


main() {
git add .
git commit -a -m "Changed!"
git push -u origin main
}

backup() {
git add .
git commit -a -m "Changed!"
git push -u origin main
}



echo "====================================="
echo "== GITHUB REPO PUSH SERVICE        =="
echo "====================================="
echo "==      1: bananapi-m2-berry	 =="
echo "==      2: backup                  =="
echo "==      3: main                    =="
echo "==      4: create new Branch!      =="
echo "====================================="

read -p "Choice > " x
case $x in
	1) berry; continue;;
	2) backup; continue;;
	3) main; continue;;
	4) read -p "Branch > " b && git checkout -b $b && git add . && git commit -a -m "Added Branch: $b " && git push -u origin $b; continue;;
	*) echo -e "INVALID INPUT!"; continue;;
esac

