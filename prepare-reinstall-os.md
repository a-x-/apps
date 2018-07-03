# Prepare macOS for reinstallation/upgrade

1. Order the browsers' tabs clutter: save as bookmarks, close, etc.
1. Sync or Backup Apps Settings, Plugins and things around
    - ~~backup~~, check sync bookmarks (favorites)
        - ~~Safari: (`Cmd-?`, `'export bookmarks'`, `⏎`)~~
        - Firefox: (`Cmd-?`, `'all bookmarks'`, `backup`) [{screen}](https://yadi.sk/i/pHVE4pVAnBYAm)
        - Chrome
    - iCloud Drive based sync (Documents/Preferences)
        - VS Code
            - check sync settings (`"~/Library/Application Support/Code/User/"`)
        - Alfred (
            - check sync settings
            - update plugin list (run ./vscode.list.generator.sh; [vscode cli doc](https://code.visualstudio.com/docs/editor/extension-gallery#_command-line-extension-management))
        - Hyper Terminal
            `{ Documents/Preferences/HyperTerm → ~ }{ .hyper.js, .hyper_plugins.js }`
        - iTerm
            - check settings sync is up-to-date
            - check tmux integration and scripts
    - _Check all of apps settings_
1. Check and save unsaved files (sublime,,,).
1. Check Cloud apps and storages are up-to-date
    - Check iCloud Drive on Home Dir sync is up-to-date
    - iCloud notes, reminders, calendar and etc.
1. Find all of git-repos
    ```sh
    find ~ -type d -name .git | sed '/dotfiles\/\.vim\/bundle/d'
    ```
    - Check statuses, add/sync remote repos, push all of them, recheck
1. Check, backup, sync home directory files off the iCloud Drive, check hidden .files
    - dotfiles
    - photobooth
    - downloads
    - projects
    - garageband
    - ...
1. Sketchapp.sh

100500. _TBD_
