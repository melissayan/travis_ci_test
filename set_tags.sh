#!/bin/bash

BRANCH="travis-branch"

echo $TRAVIS_BRANCH

if [ "$TRAVIS_BRANCH" = "$BRANCH" ]; then
  git config --global user.email "travis@travis-ci.org"
  git config --global user.name "travis-ci"
  git tag -a v${TRAVIS_BUILD_NUMBER} -m "Travis build $TRAVIS_BUILD_NUMBER pushed a tag."
  git push travis-branch --tags
fi