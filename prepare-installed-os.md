# Setup New macOS Monterey+ (MBP on M1).<br/>Frontend Developer Guide

## Setup System


Screenshots: https://ilyabirman.ru/meanwhile/2008/11/09/2/

<details><summary>1. Bunch of automatic settings (via macOS's defaults utility)</summary>

```sh

# Close any open System Preferences panes, to prevent them from overriding
# settings we’re about to change
osascript -e 'tell application "System Preferences" to quit'

# Ask for the administrator password upfront
sudo -v

# Set directory for screenshots
SCREENS_DIR='~/Library/Mobile Documents/com~apple~Preview/Documents/Screenshots';
defaults write com.apple.screencapture location $SCREENS_DIR
killall SystemUIServer
# ln -s $SCREENS_DIR ~/Desktop


#
# Displays

# Enable subpixel font rendering on non-Apple LCDs
# Reference: https://github.com/kevinSuttle/macOS-Defaults/issues/17#issuecomment-266633501
defaults write NSGlobalDomain AppleFontSmoothing -int 2


#
# Finder

# show all filename extensions
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# show status bar
defaults write com.apple.finder ShowStatusBar -bool true

# show path bar
defaults write com.apple.finder ShowPathbar -bool true

# Show the ~/Library folder
chflags nohidden ~/Library

# When performing a search, search the current folder by default
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

# Disable the warning when changing a file extension
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false


# Avoid creating .DS_Store files on network volumes
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true


# Wipe all (default) app icons from the Dock
# This is only really useful when setting up a new Mac, or if you don’t use
# the Dock to launch apps.
defaults write com.apple.dock persistent-apps -array Calendar.app

# Automatically hide and show the Dock
defaults write com.apple.dock autohide -bool true

# Add iOS Simulator to Launchpad
ln -sf "/Applications/Xcode.app/Contents/Developer/Applications/iOS Simulator.app" "/Applications/iOS Simulator.app"


# Hot corners
# Possible values:
#  0: no-op
#  2: Mission Control
#  3: Show application windows
#  4: Desktop
#  5: Start screen saver
#  6: Disable screen saver
#  7: Dashboard
# 10: Put display to sleep
# 11: Launchpad
# 12: Notification Center

# Bottom Right screen corner → Put to sleep
# use Ctrl Cmd Q instead (lock screen)
# defaults write com.apple.dock wvous-br-corner -int 10
# defaults write com.apple.dock wvous-br-modifier -int 0

## Enable tap to click (for this user and for the login screen)
#defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
#defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
#defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1


#
# Keyboard

# Disable automatic capitalization as it’s annoying when typing code
defaults write NSGlobalDomain NSAutomaticCapitalizationEnabled -bool false

# Disable smart dashes as they’re annoying when typing code
defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false

# Disable automatic period substitution as it’s annoying when typing code
defaults write NSGlobalDomain NSAutomaticPeriodSubstitutionEnabled -bool false

# Disable smart quotes as they’re annoying when typing code
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false

# Disable auto-correct
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false

# Set a blazingly fast keyboard repeat rate
# defaults write NSGlobalDomain KeyRepeat -float 0.000000000001 — does not work
# defaults write NSGlobalDomain InitialKeyRepeat -int 10 — does not work

# Disable the Character Accent Menu and Enable Key Repeat
defaults write -g ApplePressAndHoldEnabled -bool false

# Enable full keyboard access for all controls
# (e.g. enable Tab in modal dialogs)
defaults write NSGlobalDomain AppleKeyboardUIMode -int 3

# Automatically illuminate built-in MacBook keyboard in low light
defaults write com.apple.BezelServices kDim -bool true
# Turn off keyboard illumination when computer is not used for 5 minutes
defaults write com.apple.BezelServices kDimTime -int 300

#
# Safari

# Privacy: don’t send search queries to Apple
defaults write com.apple.Safari UniversalSearchEnabled -bool false
defaults write com.apple.Safari SuppressSearchSuggestions -bool true

# Show the full URL in the address bar (note: this still hides the scheme)
defaults write com.apple.Safari ShowFullURLInSmartSearchField -bool true

# Set Safari’s home page to `about:blank` for faster loading
defaults write com.apple.Safari HomePage -string "about:blank"


# Disallow hitting the Backspace key to go to the previous page in history
defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2BackspaceKeyNavigationEnabled -bool false

# Enable Safari’s debug menu
defaults write com.apple.Safari IncludeInternalDebugMenu -bool true

# Enable the Develop menu and the Web Inspector in Safari
defaults write com.apple.Safari IncludeDevelopMenu -bool true
defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey -bool true
defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled -bool true

# Enable the Develop menu and the Web Inspector in Safari
defaults write com.apple.Safari IncludeDevelopMenu -bool true
defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey -bool true
defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled -bool true



#
# Photos.app

# Prevent Photos from opening automatically when devices are plugged in
defaults -currentHost write com.apple.ImageCapture disableHotPlug -bool true
```

> Thanks to [paulirish/dotfiles/.osx](https://github.com/paulirish/dotfiles/blob/master/.osx)

</details><br/>

1. System Language: `english`
1. Intetnet Accounts
    - **Apple id** \<\<DON'T FORGET the PASSWORD!\>\> [{screen}](https://yadi.sk/i/d5eq5p5Y3YgeSV)
        - get all (iCloud) files, keychain passwords, etc.
    - etc.
1. Safari
    - develop menu [{screen}](https://yadi.sk/i/69dKCzIw3S5HCC)
    - default encoding=utf8,
    - full website address,
    - search engine,
    - home page,
    - new tab,
    - remove history manually
    - enable status bar
    - add Extensions:
      * octotree ([unsigned ext installation instruction](https://georgegarside.com/blog/macos/install-any-safari-extension-macos-mojave/))
1. Force iCloud drive download shared apps' preferences
1. Keyboard
    - language layout: en+ru [{screen}](https://yadi.sk/i/zx1JRutv3S5Gmp)
    - {auto} Disable smart quotes&dashes as they’re annoying when typing code; Disable auto-correct; Set a blazingly fast keyboard repeat rate
    - Hotkeys: [{screen}]((https://yadi.sk/i/AcdJEyzNj36xN))
        - <kbd>⌥ Space</kbd>: Alfred (better spotlight)
        - <kbd>⌘ Space</kbd>: Keyboard layout
        - <kbd>^ Space</kbd>: IDE Completion
    - {auto} Enable full keyboard access for all controls (e.g. enable Tab in modal dialogs) [{screen}](https://yadi.sk/i/qePZ1XxD3S5Guf)
    - ~~(optional) поменял действие fn на противоположное [{инструкция}](http://bit.ly/1NkgP1q)~~
    - [Disable](http://bit.ly/1JZy7Ph) `^↑` `^↓`, чтобы не было конфликта с sublime
    - Setup Control Stripe (TouchBar)
        - insert extra spacers at right
        - add screenshot button
    - Remove superfluos service shortcuts
    - Setup Characters map (jfyi: <kbd>^⌘ Space</kbd>) [{screen}](https://yadi.sk/i/d5eq5p5Y3YgeSV)
        - add favorite symbols
        - add symbol lists: Technical
    - Backlight: Automatically illuminate built-in MacBook keyboard in low light; Setup turn-off delay
1. Displays
    - more space, small pixels [{screen}](https://yadi.sk/i/bNpoXBxt3S5Gkq)
    - (optional) Setup antialiasing (General -> [ ] Use LCD Font smoothing) [Read more (ru)](http://macdaily.me/howto/font-smoothing-in-mac-os-x/)
1. Trackpad
    - ~~Enable tap to click (for this user and for the login screen)~~. [{screen}](https://yadi.sk/i/q3N1rnpm3S5Gnm)
    - enable app expose
    - screensaver hot corner right-bottom) (easy lock the laptop) [{screen}](https://yadi.sk/i/UcSwdANP3YggDC)
    - **keep** macOS default scroll direction
1. Status Menus: Date, Location, etc.
    - ~~настроил часовой пояс [{screen}](https://yadi.sk/i/m3geA1yo3S5GnC)~~
    - (optional) show date, time and charge percentage
    - (optional) hide: alfred, spectacle, time-machine, [spotlight](http://bit.ly/1OhUkeC)
        - spotlight: (`sudo chmod 600 /System/Library/CoreServices/Search.bundle/Contents/MacOS/Search && killall SystemUIServer`)
        - spectacle: [{screen}](https://yadi.sk/i/qtsKJ1u43Yo2Xq)
1. Sound
    - show volume in menu bar
1. General
    - keep opened windows (unlock the iTerm session restoration feature) [{screen}](https://yadi.sk/i/5rCOe9Vq3S5H7T)
1. Finder: [{screen}](https://yadi.sk/i/3GwnQnl63Ygnv2)
    - убрал all my files, добавил: pics, music, home
    - убрал предупреждение о смене расширений
    - поменял поиск по-умолчанию на текущую директорию
    - поменял директорию по умолчанию на `~` [{screen}](https://yadi.sk/i/Z_fSDAys3YgnVJ)
1. [change screenshot directory](https://gist.github.com/a-x-/6a14f9522a8295d6c25abb008ac66d50)
1. Setup Security & Privacy
    - Require password 5 sec after sleep
    - FileValult
1. Remove everything (except the Calendar.app) from the Dock bar

1. [Release 5000 port](https://nono.ma/port-5000-used-by-control-center-in-macos-ventura-controlce) (Disable AirPlay Receiver)

## Install & Setup Applications

1. Command Line Tools `xcode-select --install`
1. **brew**

    https://brew.sh

    ```sh
    git config --global core.compression 0
    git config --global http.postBuffer 1048576000
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
    ```
    [trick's source](https://github.com/Homebrew/discussions/discussions/668#discussioncomment-1693776)

    - подключил расширенный каталог (с бетами и пр.) для brew cask: `brew tap caskroom/versions`
1. Batch install all of brew, brew cask, npm, app store apps and pkgs ([a-x-/apps automation](https://github.com/a-x-/apps))
1. **Dotfiles**: clone git repo and setup ([a-x-/.files](https://github.com/a-x-/.files))
    - Install & Setup ZSH Shell, configs, completions, plugins
    - Generate new GPG and SSH keys, update everywhere
        - [Generate GPG manual](https://help.github.com/articles/generating-a-new-gpg-key/)
    - VS Code
        - plugins: see vscode.list
        - Cmd-Shift-P: `Shell Command: Install 'code' command in PATH`

1. iCloud Drive based settings sync (`Documents/Preferences`)
    - Alfred
        - restore settyngs sync [{screen}](https://yadi.sk/i/E0SYuDKt3YiicL), 
        - restore license (from the mail inbox), 
        - setup [some manual settings](https://www.alfredapp.com/help/advanced/sync/#not-synced)
    - iTerm: restore sync [{screen}](https://yadi.sk/i/o1XFs29X3YiiU7)
        - [`alt+left/right`](https://apple.stackexchange.com/a/218639)
        - triggers: on build
        - Install Shell Integration
        - etc.
    - ~~Hyper: restore sync~~
1. Chrome, Safari
    - import bookmarks
1. Mail.app
    - setup accounts
    - (optional) hide ui buttons in favor of hotkeys and touchbar:
        - get new mail (`Cmd-Shift-N`)
    - (optional) add new buttons:
      - archive (`^Cmd-A`),
      - read/unread (`Cmd-Shift-U`)
1. Calendar.app: setup...
1. Install&Setup VPN-Clients
    - macOS VPN: Network > VPN > Export #8
1. Tune [Recess](https://itunes.apple.com/ru/app/recess/id621451282?mt=12) settings
    - start at login
    - keep on top (prevent catching the focus)

<details><summary>Optional and obsolete software</summary>

1. Firefox
    - remove an "allow pasting" in the console

        [Инструкция](http://lifehacker.com/enable-copy-paste-in-web-pages-that-disallow-it-with-a-1601848114):

         - Go to `about:config`
         - Search for `dom.event.clipboardevents.enabled`
         - Double-click it to change the value to "false"
         - Restart ff
    - add a [Copy Link Text](https://addons.mozilla.org/ru/firefox/addon/copy-link-text-4750/) plugin
1. `imagemagic` with correct svg support: `brew install imagemagick --with-librsvg`
1. Java
    - java8 ([manual](https://nda.ya.ru/3QxPTe))
    - java6 for webstorm ([download](https://support.apple.com/kb/DL1572?viewlocale=en_US&locale=en_US))
1. WebStorm
    - re-activate license. [см. подробнее](https://nda.ya.ru/3QxXtH)
    - re-apply settings (HOW TO DO IT SAFELY?)
1. Sublime text: Сделал параметры (настройки, список плагинов, хоткеи) sublime линками из yadisk
    - `ln /Users/invntrm/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Default\ \(OSX\).sublime-keymap ~/Cloud/Настрои<0306>ки/sublime-hokkeys.json`
    - `ln /Users/invntrm/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Preferences.sublime-settings  ~/Cloud/Настрои<0306>ки/sublime-setings.json`
    - `ln /Users/invntrm/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Package\ Control.sublime-settings  ~/Cloud/Настрои<0306>ки/sublime-packages.json`
1. install yandex.disk from the web site, login (it's [brew cask incompatible](//st/DISCSW-5623/))

</details>

_TBD_


[a-x-/vscode-configs]: https://github.com/a-x-/vscode-configs
