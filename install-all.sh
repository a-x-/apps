#!/bin/sh
# run on os x

< ~/Cloud/apps/brew.list sed -E 's/#.+//' | xargs brew install
< ~/Cloud/apps/npm.list sed -E 's/#.+//' | xargs npm -g install
< ~/Cloud/apps/brew-cask.list sed -E 's/#.+//' | xargs brew cask install
