#!/bin/bash
# This basic script make pushing on git more easier

cwd=$(pwd)
d=$(basename "$cwd")
echo  "Is $d the right folder for simply adding to your repo the stuff you want?"
select yn in "Yes" "No"; do
	case $yn in
	Yes )
read -rp "Which files do you want to add to git ?  " fadd
read -rp "What is your commit message ?  " mess
git add -u
if [ "$fadd" != "" ]
then
	git add "$fadd"
fi
git commit -m "$mess"
git push
exit
;;
	No  )
echo "then go there first ;)"
exit;;
  	esac
done
