#!/usr/bin/env bash

echo '#########    git pull   ######'
OLD_BRANCH=$(git symbolic-ref --short -q HEAD)
OLD_COMMIT=$(git log -n 1|grep commit|awk '{print $2}'|head -n 1)

echo 'branch info'
echo $OLD_BRANCH
echo $OLD_COMMIT

PULL_RES=$(git pull)
echo $PULL_RES

NEW_BRANCH=$(git symbolic-ref --short -q HEAD)
NEW_COMMIT=$(git log -n 1|grep commit|awk '{print $2}'|head -n 1)

echo '########  hexo generate ######'
echo 'pull branch ifo'
echo $NEW_BRANCH
echo $NEW_COMMIT

if [ $OLD_COMMIT == $NEW_COMMIT ]; then
	echo 'no change'
else
	echo 'new commit, hexo clean && hexo generate'
        hexo clean && hexo generate
fi
