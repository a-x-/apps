#!/bin/sh
< web.list while read i; do echo -e "\n$i"; brew cask search $i; done
