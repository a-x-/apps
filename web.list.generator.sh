#!/bin/sh
< src-installed.list grep -Fxvf src-builtin.list | grep -v 'AppleScript Editor' > web.list
