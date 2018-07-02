# Подготовка системы к переустановке или апгрейду

1. Найти все git-репозитории
   `find . -type d -name .git | sed '/dotfiles\/\.vim\/bundle/d; /\.cache\/mm-interfaces/d'`
1. TODO Проверить их статусы, Закомиттить, запушистить и перепроверить
1. save favorites of all browsers
  11. **safari**: (`Cmd-?`, `'export bookmarks'`, `⏎`)
  12. firefox: (`Cmd-?`, `'all bookmarks'`, `backup`) [{screenshot}](https://yadi.sk/i/pHVE4pVAnBYAm)
  13. chrome, chromium, yabro
1. Разобрать вкладки браузеров, сохранить в закладки
1. засинкать/сохранить настройки VS Code ~~webstorm~~, iTerm, Alfred и др. (как?)
    - сохранить настройки vs code
      `"~/Library/Application Support/Code/User/keybindings.json"`

1. посохранять несохранённые файлы (в sublime).
1. убедиться что разные облачные хранилища просинкались (у меня: яндекс.диск, icloud notes, reminders, calendar, evernote)

1. Sketchapp.sh

100500. _TBD_
