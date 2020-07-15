#!/bin/bash

# remove yourself
rm $0

FALLBACK_VERSION="2.6.3"
VERSION="${1:-$FALLBACK_VERSION}"
ZIP="scalafmt-linux.zip"
SOURCE=https://github.com/scalameta/scalafmt/releases/download/v$VERSION/$ZIP
TARGET=/usr/local/bin/scalafmt-native

# install curl
sudo apt install -yqqq curl

# install scalafmt-native
curl -L $SOURCE -o $ZIP
unzip -qq $ZIP
rm $ZIP
sudo mv scalafmt $TARGET
sudo chmod 755 $TARGET
sudo chown root:root $TARGET

echo
scalafmt-native --version

echo
echo \""scalafmt-native"\" is now on the path
