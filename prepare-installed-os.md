# Полная настройка чистой OS X

## 1. setup system

1. настроил монитор: мельче [{скрин}](https://yadi.sk/i/bNpoXBxt3S5Gkq)
2. настроил язык интерфейса: англ [{скрин}](https://yadi.sk/i/zx1JRutv3S5Gmp)
3. настроил часовой пояс [{скрин}](https://yadi.sk/i/m3geA1yo3S5GnC)
5. поставил некоторые плагины к sublime: **TODO**: добавить ссылки на файлы в репо
6. настроил клик по тапу[{скрин}](https://yadi.sk/i/q3N1rnpm3S5Gnm)
7. убрал иконки в меню-баре: alfred, spectacle, timem-machine, [spotlight](http://bit.ly/1OhUkeC)
   (`sudo chmod 600 /System/Library/CoreServices/Search.bundle/Contents/MacOS/Search && killall SystemUIServer`)
7. ["отключил" так же хоткей spotlight](https://yadi.sk/i/AcdJEyzNj36xN), и поставил хоткей alfred (замена spotlight): `Alt-Space`
7. включил отображение даты и процента заряда
9. выключил корректировку набора и корректировку кавычек [{скрин}](https://yadi.sk/i/UAWynEU_3S5GtJ)
11. настроил быстрое повторение зажатой клавиши [{скрин}](https://yadi.sk/i/UZuseCDe3S5Gu3)
10. выставил достижимость табом всех контролов [{скрин}](https://yadi.sk/i/qePZ1XxD3S5Guf)
12. настроил сохранение открытых окон приложений (чтобы сохранялась сессия в iterm) [{скрин}](https://yadi.sk/i/5rCOe9Vq3S5H7T)
15. (optional) поменял действие fn на противоположное [{инструкция}](http://bit.ly/1NkgP1q)
23. [отключил](http://bit.ly/1JZy7Ph) `^↑` `^↓`, чтобы не было конфликта с sublime
1. Тачпад: включил жест app expose
2. Тачпад: настроил жест (hot corner right-bottom) включения заставки (чтобы быстро "блокировать" компьютер)
35. Настроил finder:
  1. убрал all my files, добавил: pics, music, home
  2. убрал предупреждение о смене расширений
  3. поменял поиск по-умолчанию на текущую директорию
  4. поменял директорию по умолчанию на `~`
48. Выключить антиалиасинг (General -> [ ] Use LCD Font smoothing)
49. [change screenshot directory](https://gist.github.com/a-x-/6a14f9522a8295d6c25abb008ac66d50)

## 2. login with apple id **REMEMBER PASSWORD**

## 3. ~~подменил keychain на прежний из бэкапа (/Users/invntrm/Library/Keychains)~~

## 4. check apple keychain icloud sync

## 5. ~~(obsolete) убрал dashboard по [инструкции](http://bit.ly/1JZgoYi)~~

## 6. install soft

24. установил Command Line Tools `xcode-select --install`
29. Накатил все прежние brew, brew cask, npm пакеты. [См. репо, для повторения](https://github.com/a-x-/apps)
30. (optional) поставил tunnelblick (см. подробнее ниже)
26. поставил yandex.disk с сайта, залогинелся **по памяти** (в brew cask его [не добавить](//st/DISCSW-5623/))
8. (optional) java для локальных тестов и webstorm
  1. поставил java8 [по инструкции](https://nda.ya.ru/3QxPTe)
  2. поставил java6 для webstorm [по адресу](https://support.apple.com/kb/DL1572?viewlocale=en_US&locale=en_US)
20. установил brew: http://brew.sh
41. clone dotfiles git repo and setup
49. Установить `imagemagic` с правильным svg: `brew install imagemagick --with-librsvg`

## 7. setup soft

7. restore alfred settings sync
14. активировал лицензию webstorm. [см. подробнее](https://nda.ya.ru/3QxXtH)
15. восстановить прежние настройки webstorm (как?)
18. установил некоторые ранее установленные приложения из app store (вкладка "купленные", понажимать [install])
21. ~~(available out of the box now) установил brew cask: http://caskroom.io: `brew install caskroom/cask/brew-cask`~~
22. подключил расширенный каталог (с бетами и пр.) для brew cask: `brew tap caskroom/versions`
28. Сделал параметры (настройки, список плагинов, хоткеи) sublime линками из yadisk
  1. `ln /Users/invntrm/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Default\ \(OSX\).sublime-keymap ~/Cloud/Настрои<0306>ки/sublime-hokkeys.json`
  2. `ln /Users/invntrm/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Preferences.sublime-settings  ~/Cloud/Настрои<0306>ки/sublime-setings.json`
  3. `ln /Users/invntrm/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Package\ Control.sublime-settings  ~/Cloud/Настрои<0306>ки/sublime-packages.json`
32. импортировал закладки в safari и firefox
42. настроил mail.app
  43. подключил аккаунт (см. подробнее ниже)
  44. настроил кнопки: убрал кнопку получить письма (`Cmd-Shift-N`), добавил кнопки: "архивировать" (`^Cmd-A`), "прочитано (нет хоткея)/не прочитано (`Cmd-Shift-U`)"
43. Настроил проброс ключей (см. подробнее ниже)
44. Настроил календарь (см. подробнее ниже)
45. (optional) Настроил firefox
  1. Убрал дибильное издевательство над здравым смыслом при вставке в консоль firefox "allow pasting".
      [Инструкция](http://lifehacker.com/enable-copy-paste-in-web-pages-that-disallow-it-with-a-1601848114):
        47. Go to `about:config`
        48. Search for `dom.event.clipboardevents.enabled`
        49. Double-click it to change the value to "false"
        50. Restart ff
  2. Добавил плагин [Copy Link Text](https://addons.mozilla.org/ru/firefox/addon/copy-link-text-4750/) чтобы хоть как-то копировать текст ссылок (очень частый кейс).
46. Настроил Safari
  47. Чтобы отлаживать safari на mac, ipad, iphone, включил инструменты разработчика [{Скрин}](https://yadi.sk/i/69dKCzIw3S5HCC)
50. setup iterm
  1. [`alt+left/right`](https://apple.stackexchange.com/a/218639)

_TBD_

_Далее ещё идёт установка/настройка внутри корпоративных специфичных штуковин. Мой список лежит на внутреннем гитхабе._
