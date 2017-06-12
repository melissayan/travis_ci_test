#!/bin/bash

BRANCH="travis-branch"

echo "TRAVIS_BRANCH: $TRAVIS_BRANCH BRANCH: $BRANCH"

if [ "$TRAVIS_BRANCH" = "$BRANCH" ]; then
  git config --global user.email "travis@travis-ci.org"
  git config --global user.name "travis-ci"
  git tag -a v${TRAVIS_BUILD_NUMBER} -m "Travis build $TRAVIS_BUILD_NUMBER pushed a tag."
  git commit -m "branch update message"
  git push origin --tags
  git fetch origin
fi