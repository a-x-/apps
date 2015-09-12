#!/bin/sh

(ls /App*; ls /App*/Util*) | gsed -r 's/\.app$//' > ~/Yandex.Disk.localized/apps/src-installed.list
