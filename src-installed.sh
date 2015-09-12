#!/bin/sh
(ls /App*; ls /App*/Util*) | sed 's/\.app$//' > src-installed.list
