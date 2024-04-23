#!/bin/bash

session_names=$(tmux list-sessions -F "#S")
sketchybar --remove /tmux_.*/

for session in $session_names
do
  sname="tmux_$session"
  echo $sname
   sketchybar --add item $sname left
   sketchybar --set $sname label=$session \
              click_script="/opt/homebrew/bin/alacritty msg create-window -e /opt/homebrew/bin/tmux attach -t $session"
done
