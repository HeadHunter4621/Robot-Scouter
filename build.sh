#!/bin/bash -x

if [ $TRAVIS_PULL_REQUEST = "false" ] && [ $TRAVIS_BRANCH == 'master' ]; then
  ./gradlew clean build publishApkRelease
else
  ./gradlew clean build
fi

set +x