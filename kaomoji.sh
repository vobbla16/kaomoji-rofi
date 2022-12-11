#!/usr/bin/env bash

selection=$(rofi -i -dmenu $@ -width 50  < $(dirname $0)/kaomoji.txt)
kaomoji=$(echo $selection | sed "s|$(echo -e "\ufeff").*||"i | cut -d' ' -f1)
echo -n "$kaomoji" | wl-copy
