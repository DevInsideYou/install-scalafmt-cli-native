#!/bin/bash

# remove yourself
rm $0

FALLBACK_VERSION="2.7.4"
VERSION="${1:-$FALLBACK_VERSION}"
SOURCE=https://github.com/scalameta/scalafmt/releases/download/v$VERSION/scalafmt-linux-musl
DIR=~/bin
TARGET=$DIR/scalafmt-native

mkdir -p $DIR

# install scalafmt-native
curl -L $SOURCE -o $TARGET

chmod +x $TARGET

echo
scalafmt-native --version

echo
echo '"scalafmt-native"' is now on the path
