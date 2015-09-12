# apps

## Установить всё
```sh
./install-all.sh
```

## Списки приложений
```sh
ls | grep 'list$' | grep -v src
```
```
appstore.list
brew-cask.list
brew.list
npm.list
web.list
```

## Генераторы списков
```sh
ls | grep gen
```
```
appstore.list.generation.txt
brew-cask.list.generator.sh
brew.list.generator.sh
npm.list.generator.sh
src-builtin.generation.txt
```

## TODO
* добавить плагины sublime
