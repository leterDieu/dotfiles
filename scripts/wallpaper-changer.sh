#!/bin/bash

DIR="$HOME/Pictures/catppuccin-wallpapers"
CHOSEN="$(ls $DIR | shuf -n1)"
swww img "$DIR/$CHOSEN" --transition-type any 
