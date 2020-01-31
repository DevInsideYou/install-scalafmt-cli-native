#!/bin/bash

# remove yourself
rm $0

FALLBACK_VERSION="2.3.2"
VERSION="${1:-$FALLBACK_VERSION}"
NAME="scalafmt-linux"
ZIP=$NAME.zip
SOURCE=https://github.com/scalameta/scalafmt/releases/download/v$VERSION/$ZIP
TARGET=scalafmt-native

# install curl
sudo apt install -yqqq curl

# install scalafmt-native
cd /usr/local/bin
sudo curl -L $SOURCE -o $ZIP
sudo unzip -qq $ZIP
sudo rm $ZIP
sudo mv $NAME/scalafmt $TARGET
sudo rm -r $NAME
sudo chmod +x $TARGET

echo
$TARGET --version

echo
echo \""$TARGET"\" is now on the path
