#!/bin/sh
npm -g list -depth 0 | sed '1d' | cut -d ' ' -f 2 | cut -d '@' -f 1 | grep -vE 'npm|install' > npm.list
