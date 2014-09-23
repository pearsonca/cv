#!/bin/bash
if [ $# = 1 ]; then	
	[[ $1 =~ ^(git@github\.com):([^/]+)/([^\.]+)\.git$ ]]
	echo remote: ${BASH_REMATCH[0]}
	echo service: ${BASH_REMATCH[1]}
	echo user: ${BASH_REMATCH[2]}
	echo repo: ${BASH_REMATCH[3]}
	mkdir ../${BASH_REMATCH[3]}
	cd ../${BASH_REMATCH[3]}
	git init
	git pull ../site-skeleton/
	echo ${BASH_REMATCH[3]} > README.md
	echo ${BASH_REMATCH[3]//?/=} >> README.md
	echo >> README.md
	echo a bare gh-pages repo >> README.md
	git add README.md
	git commit -m "update README.md to new repo name"
	sed -i -e s/USER/${BASH_REMATCH[2]}/ _config.yml
	sed -i -e s/REPO/${BASH_REMATCH[3]}/ _config.yml
	git add _config.yml
	git commit -m "update _config.yml"
	git remote add origin ${BASH_REMATCH[0]}
	git remote -v
	git push
	git checkout -b gh-pages
	git push --set-upstream origin gh-pages
else
	echo "usage: $ ./dupe.sh git@github.com:USERNAME/REPONAME.git"
fi