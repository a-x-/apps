#!/bin/sh
# run on os x

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" # brew
brew tap caskroom/versions

# todo: dotfiles, zsh

# install node and npm
curl -L https://git.io/n-install > install-n
chmod a+x install-n
./install-n -y
. ~/.bashrc
. ~/.bash_profile
npm i -g npm

IGNORE_COMMENTS='s/#.+//'
brew install git
mkdir ~/xp/ 2>/dev/null
git clone git@github.com:a-x-/apps.git ~/xp/apps

cat ~/xp/apps/brew.list       | sed -E $IGNORE_COMMENTS | xargs brew install
cat ~/xp/apps/brew-cask.list  | sed -E $IGNORE_COMMENTS | xargs brew cask install
cat ~/xp/apps/npm.list        | sed -E $IGNORE_COMMENTS | xargs npm -g install
cat ~/xp/apps/vscode.list     | sed -E $IGNORE_COMMENTS | xargs code --install-extension

echo "\nbrew, brew-cask, npm, vscode apps and plugins had installed"
echo "\nGo to app store and download purchased earlier apps"
