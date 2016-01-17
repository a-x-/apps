# Полная настройка чистой OS X

1. настроил монитор: мельче [{скрин}](https://yadi.sk/i/TmxHJLifj2ppW)
2. настроил язык интерфейса: англ [{скрин}](https://yadi.sk/i/WhMZXFNYj2ptT)
3. настроил часовой пояс [{скрин}](https://yadi.sk/i/NlCrpsQaj2q5J)
5. поставил некоторые плагины к sublime: **TODO**: добавить ссылки на файлы в репо
6. настроил клик по тапу[{скрин}](https://yadi.sk/i/diC3OvNCj36nM)
7. убрал иконки в меню-баре: alfred, spectacle, timem-machine, [spotlight](http://bit.ly/1OhUkeC)
    (`sudo chmod 600 /System/Library/CoreServices/Search.bundle/Contents/MacOS/Search && killall SystemUIServer`)
    * ["отключил" так же хоткей spotlight](https://yadi.sk/i/AcdJEyzNj36xN), и поставил хоткей alfred (замена spotlight): `Alt-Space`
    * включил отображение даты и процента заряда
    * настроил alfred (подробнее о настройках [см. ниже](https://nda.ya.ru/3Qxmhz))
8. java для локальных тестов и webstorm
  8. поставил java8 [по инструкции](https://nda.ya.ru/3QxPTe)
  9. поставил java6 для webstorm [по адресу](https://support.apple.com/kb/DL1572?viewlocale=en_US&locale=en_US)
9. выключил корректировку набора и корректировку кавычек [{скрин}](https://yadi.sk/i/RCTKs9FJj37Ei)
10. выставил достижимость табом всех контролов [{скрин}](https://yadi.sk/i/IAioGJ_9j37iA)
11. настроил быстрое повторение зажатой клавиши [{скрин}](https://yadi.sk/i/B7MmIA7Hj37ix)
14. активировал лицензию webstorm. [см. подробнее](https://nda.ya.ru/3QxXtH)
15. поменял действие fn на противоположное [{инструкция}](http://bit.ly/1NkgP1q)
16. Тачпад
  1. включил жест app expose
  2. настроил жест (hot corner right-bottom) включения заставки (чтобы быстро "блокировать" компьютер)
23. [отключил](http://bit.ly/1JZy7Ph) `^↑` `^↓`, чтобы не было конфликта с sublime
17. залогинелся с apple id **по памяти**
18. установил некоторые ранее установленные приложения из app store (вкладка "купленные", понажимать [install])
19. убрал dashboard по [инструкции](http://bit.ly/1JZgoYi)
20. установил brew: http://brew.sh
21. установил brew cask: http://caskroom.io: `brew install caskroom/cask/brew-cask`
22. подключил расширенный каталог (с бетами и пр.) для brew cask: `brew tap caskroom/versions`
29. Накатил все прежние brew, brew cask, npm пакеты. [См. репо, для повторения](https://github.com/a-x-/apps)
30. поставил tunnelblick (см. подробнее ниже)
24. установил Command Line Tools `xcode-select --install`
26. поставил yandex.disk с сайта, залогинелся **по памяти** (в brew cask его [не добавить](//st/DISCSW-5623/))
40. Добавил хоткей для получения ссылки на файл в Яндекс.диске: `Cmd-Alt-Shift-=` [{Скрин}](https://yadi.sk/i/0a0Sxxk6j37GA)
26. подменил keychain на прежний из бэкапа, ура, теперь все пароли вновь со мной (/Users/invntrm/Library/Keychains)
28. Сделал параметры (настройки, список плагинов, хоткеи) sublime симлинками из dotfiles
32. импортировал закладки в safari и firefox
34. включил отображение даты в "часах".
35. Настроил finder:
	1. убрал all my files, добавил: pics, music, home
	2. убрал предупреждение о смене расширений
	3. поменял поиск по-умолчанию на текущую директорию
	4. поменял директорию по умолчанию на `~`
41. поставил дотфайлы (см. подробнее ниже)
42. настроил mail.app
  43. подключил аккаунт (см. подробнее ниже)
  44. настроил кнопки: убрал кнопку получить письма (`Cmd-Shift-N`), добавил кнопки: "архивировать" (`^Cmd-A`), "прочитано (нет хоткея)/не прочитано (`Cmd-Shift-U`)"
43. Настроил проброс ключей (см. подробнее ниже)
44. Настроил календарь (см. подробнее ниже)
45. Настроил firefox
  1. Убрал дибильное издевательство над здравым смыслом при вставке в консоль firefox "allow pasting".
      [Инструкция](http://lifehacker.com/enable-copy-paste-in-web-pages-that-disallow-it-with-a-1601848114):
        47. Go to `about:config`
        48. Search for `dom.event.clipboardevents.enabled`
        49. Double-click it to change the value to "false"
        50. Restart ff
  2. Добавил плагин [Copy Link Text](https://addons.mozilla.org/ru/firefox/addon/copy-link-text-4750/) чтобы хоть как-то копировать текст ссылок (очень частый кейс).
46. Настроил Safari
  47. Чтобы отлаживать safari на mac, ipad, iphone, включил инструменты разработчика [{Скрин}](https://yadi.sk/i/BoBP-bzmj5n34)
48. Выключить антиалиасинг (General -> [ ] Use LCD Font smoothing)

_TBD_

_Далее ещё идёт установка/настройка внутри корпоративных специфичных штуковин. Мой список лежит на внутреннем гитхабе._
