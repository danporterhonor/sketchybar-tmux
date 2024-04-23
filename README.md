# sketchybar-tmux plugin

Dependencies:
alacritty, tmux

Install:
```bash
cp tmux.sh ~/.config/sketchybar/plugins/tmux.sh
```

add to sketchybarrc:
```bash
sketchybar --add item tmux left \
           --set tmux update_freq=600 \
                    script="$PLUGIN_DIR/tmux.sh" \
```
