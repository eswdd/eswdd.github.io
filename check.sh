#!/bin/bash

TMP_DIR=/tmp/publish_$$
mkdir -p $TMP_DIR
cd $TMP_DIR

REPO=https://github.com/eswdd/eswdd.github.io.git

echo "Repository: $REPO"

git clone -b master $REPO repo

cd $TMP_DIR/repo
bundle exec jekyll build --trace --config _config.yml
RESULT=$?
if [ $RESULT -ne 0 ]; then
  exit 1
fi
cd $TMP_DIR
rm -rf repo
