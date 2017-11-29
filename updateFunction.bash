#!/bin/sh

UPSTREAM=${1:-'@{u}'}
LOCAL=$(git rev-parse @)
REMOTE=$(git rev-parse "$UPSTREAM")
BASE=$(git merge-base @ "$UPSTREAM")

if [ $LOCAL = $REMOTE]; then
	echo "Up to date"
elif [ $LOCAL = $BASE ]; then
	echo "Pulling"
	git pull
elif [ $REMOTE = $BASE ]; then
	echo "Pushing"
	git push WebsiteGit
else
	echo "Diverged"
fi