# Prepare macOS for reinstallation/upgrade

1. Order the browsers' tabs clutter: save as bookmarks, close, etc.
1. Sync or Backup Apps Settings, Plugins and things around
    - backup or sync bookmarks (favorites)
        - Safari: (`Cmd-?`, `'export bookmarks'`, `⏎`)
        - Firefox: (`Cmd-?`, `'all bookmarks'`, `backup`) [{screen}](https://yadi.sk/i/pHVE4pVAnBYAm)
        - Chrome:
    - VS Code
        - backup or sync settings `"~/Library/Application Support/Code/User/keybindings.json"`
    - Alfred
        - sync settings
        - backup or sync plugins
    - Hyper Terminal
    - iTerm
        - check settings sync is up-to-date
        - check tmux integration and scripts
    - _Check all of apps settings_
1. Check and save unsaved files (sublime,,,).
1. Check Cloud apps and storages are up-to-date
    - iCloud notes, reminders, calendar and etc.
1. Find all of git-repose
    ```sh
    find . -type d -name .git | sed '/dotfiles\/\.vim\/bundle/d; /\.cache\/mm-interfaces/d'
    ```
    - Check statuses, add/sync remote repos, push all of them, recheck
1. Sketchapp.sh

100500. _TBD_
