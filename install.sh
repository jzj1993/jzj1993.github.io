#!/usr/bin/env bash

command -v npm || { echo 'Please install npm first!'; exit 1; }
command -v yarn || { echo 'Please install yarn first!'; exit 1; }

LINK_SRC="$HOME/Notes/blog"
LINK_DST="$HOME/Blog/source/_posts"
echo "Create link: $LINK_SRC -> $LINK_DST"
ln -s $LINK_SRC $LINK_DST
echo

echo "Install hexo-cli globally"
npm install -g hexo

echo "Install dependencies"
yarn

echo
echo "Complete"
echo
