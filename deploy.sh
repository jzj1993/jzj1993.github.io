#!/usr/bin/env bash

# incremental deploy

echo "regenerate blog to public dir"
hexo clean
hexo generate

echo "fetch git"
pushd deploy
git fetch origin gh-pages:gh-pages
git checkout gh-pages --force

echo "override latest to current dir"
# remove anything from current dir
setopt localoptions rmstarsilent
rm -rf ./*

# copy public to current dir
cp -a ../public/. ./

echo "git status"
git add .
# git status

echo "deploy"
git commit -m "Incremental deploy `date +'%Y-%m-%d %H:%M:%S'`"
git push origin gh-pages

popd
