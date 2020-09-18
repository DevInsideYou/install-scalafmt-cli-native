#!/bin/bash

# remove yourself
rm $0

FALLBACK_VERSION="2.7.2"
VERSION="${1:-$FALLBACK_VERSION}"
SOURCE=https://github.com/scalameta/scalafmt/releases/download/v$VERSION/scalafmt-linux-musl
TARGET=/usr/local/bin/scalafmt-native

# install curl
sudo apt install -yqqq curl

# install scalafmt-native
sudo curl -L $SOURCE -o $TARGET

echo
scalafmt-native --version

echo
echo \""scalafmt-native"\" is now on the path
