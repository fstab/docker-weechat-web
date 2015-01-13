#!/bin/bash

# columns and rows must match the terminal size in index.html
stty columns 120
stty rows 36

while true
do
    if [ -f "/home/otr/.weechat/irc.conf" ]
    then
        weechat
    else
        weechat -r "`cat config.txt | tr \"\\n\" \"\;\"`"
    fi
done
