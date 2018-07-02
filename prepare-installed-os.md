# Полная настройка чистой macOS Sierra+ (macbook pro touchbar) для фронтендера

## setup system

1. setup system language: `english`
1. setup Intetnet Accounts
    - **Apple id** \<\<DON'T FORGET the PASSWORD!\>\> [{screen}](https://yadi.sk/i/d5eq5p5Y3YgeSV)
      get all (iCloud) files, keychain passwords, etc.
    - etc.
1. setup Safari
    - develop menu [{screen}](https://yadi.sk/i/69dKCzIw3S5HCC)
    - default encoding=utf8,
    - full website address,
    - search engine,
    - home page,
    - new tab,
    - remove history manually
1. setup keyboard
    - language layout: en+ru [{screen}](https://yadi.sk/i/zx1JRutv3S5Gmp)
    - hotkeys: [{screen}]((https://yadi.sk/i/AcdJEyzNj36xN))
        - <kbd>⌥ Space</kbd>: Alfred (better spotlight)
        - <kbd>⌘ Space</kbd>: Keyboard layout
        - <kbd>^ Space</kbd>: IDE Completion
    - выключил корректировку набора и корректировку кавычек [{скрин}](https://yadi.sk/i/UAWynEU_3S5GtJ)
    - настроил быстрое повторение зажатой клавиши [{скрин}](https://yadi.sk/i/UZuseCDe3S5Gu3)
    - выставил достижимость табом всех контролов [{скрин}](https://yadi.sk/i/qePZ1XxD3S5Guf)
    - ~~(optional) поменял действие fn на противоположное [{инструкция}](http://bit.ly/1NkgP1q)~~
    - [отключил](http://bit.ly/1JZy7Ph) `^↑` `^↓`, чтобы не было конфликта с sublime
    - setup control stripe:
        - insert extra spacers at right
        - add screenshot button
    - remove superfluos service shortcuts
    - characters map (jfyi: <kbd>^⌘ Space</kbd>) [{screen}](https://yadi.sk/i/d5eq5p5Y3YgeSV)
        - add favorite symbols
        - add symbol lists: Technical
1. setup display
    - настроил монитор: мельче [{скрин}](https://yadi.sk/i/bNpoXBxt3S5Gkq)
    - (optional) Настроил антиалиасинг (General -> [ ] Use LCD Font smoothing) [Подробности](http://macdaily.me/howto/font-smoothing-in-mac-os-x/)
1. setup trackpad
    - настроил клик по тапу [{скрин}](https://yadi.sk/i/q3N1rnpm3S5Gnm)
    - Тачпад: включил жест app expose
    - Тачпад: настроил жест (hot corner right-bottom) включения заставки (чтобы быстро "блокировать" компьютер) [{screen}](https://yadi.sk/i/UcSwdANP3YggDC)
1. Date, Location
    - ~~настроил часовой пояс [{скрин}](https://yadi.sk/i/m3geA1yo3S5GnC)~~
    - *(optional)* включил отображение даты и процента заряда
1. (optional) убрал иконки в меню-баре: alfred, spectacle, timem-machine, [spotlight](http://bit.ly/1OhUkeC)
   (`sudo chmod 600 /System/Library/CoreServices/Search.bundle/Contents/MacOS/Search && killall SystemUIServer`)
1. setup Sound
    - show volume in menu bar
1. настроил сохранение открытых окон приложений (чтобы сохранялась сессия в iterm) [{скрин}](https://yadi.sk/i/5rCOe9Vq3S5H7T)
1. Настроил finder: [{screen}](https://yadi.sk/i/3GwnQnl63Ygnv2)
    - убрал all my files, добавил: pics, music, home
    - убрал предупреждение о смене расширений
    - поменял поиск по-умолчанию на текущую директорию
    - поменял директорию по умолчанию на `~` [{screen}](https://yadi.sk/i/Z_fSDAys3YgnVJ)
1. [change screenshot directory](https://gist.github.com/a-x-/6a14f9522a8295d6c25abb008ac66d50)
1. Setup Security & Privacy
    - Require password 5 sec after sleep
    - FileValult
1. Remove everything from the Dock bar


## install & setup applications

1. установил Command Line Tools `xcode-select --install`
1. brew

    https://brew.sh

    `/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`

    - подключил расширенный каталог (с бетами и пр.) для brew cask: `brew tap caskroom/versions`
1. Накатил все прежние brew, brew cask, npm пакеты, приложения из app store (вкладка "купленные") [См. репо, для повторения](https://github.com/a-x-/apps)
1. (optional) Install&Setup VPN-Client
1. ~~(optional) поставил yandex.disk с сайта, залогинелся **по памяти** (в brew cask его [не добавить](//st/DISCSW-5623/))~~
1. **dotfiles**: clone git repo and setup
    - Install & Setup ZSH Shell, configs, completions, plugins
1. Установить `imagemagic` с правильным svg: `brew install imagemagick --with-librsvg`
1. ~~(optional) java для локальных тестов и webstorm~~
    - ~~поставил java8 [по инструкции](https://nda.ya.ru/3QxPTe)~~
    - ~~поставил java6 для webstorm [по адресу](https://support.apple.com/kb/DL1572?viewlocale=en_US&locale=en_US)~~
1. **alfred**: install, restore license, restore settings sync
1. ~~webstorm~~
    - ~~активировал лицензию webstorm. [см. подробнее](https://nda.ya.ru/3QxXtH)~~
    - ~~восстановить прежние настройки webstorm (как?)~~
1. **VS Code**
    - Port VS Code Settings and Plugins
      `"~/Library/Application Support/Code/User/keybindings.json"`
1. ~~Sublime text~~: Сделал параметры (настройки, список плагинов, хоткеи) sublime линками из yadisk
    - `ln /Users/invntrm/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Default\ \(OSX\).sublime-keymap ~/Cloud/Настрои<0306>ки/sublime-hokkeys.json`
    - `ln /Users/invntrm/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Preferences.sublime-settings  ~/Cloud/Настрои<0306>ки/sublime-setings.json`
    - `ln /Users/invntrm/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Package\ Control.sublime-settings  ~/Cloud/Настрои<0306>ки/sublime-packages.json`
1. chrome, safari
    - import bookmarks
1. mail.app
    - setup accounts
    - (optional) hide ui buttons in favor of hotkeys and touchbar:
        - get new mail (`Cmd-Shift-N`)
    - (optional) add new buttons:
      - archive (`^Cmd-A`),
      - read/unread (`Cmd-Shift-U`)
1. (optional) SSH: Настроил проброс ключей (см. подробнее ниже)
1. calendar.app: setup...
1. (optional) Настроил firefox
    - Убрал "allow pasting" при вставке в консоль

        [Инструкция](http://lifehacker.com/enable-copy-paste-in-web-pages-that-disallow-it-with-a-1601848114):

         - Go to `about:config`
         - Search for `dom.event.clipboardevents.enabled`
         - Double-click it to change the value to "false"
         - Restart ff
    - Добавил плагин [Copy Link Text](https://addons.mozilla.org/ru/firefox/addon/copy-link-text-4750/) чтобы хоть как-то копировать текст ссылок (очень частый кейс).
1. setup iterm
    - [`alt+left/right`](https://apple.stackexchange.com/a/218639)

_TBD_
