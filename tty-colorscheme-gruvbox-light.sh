#!/usr/bin/env bash
# ~/utono/install/tty-colorscheme-gruvbox-light.sh
# Set TTY colorscheme to Gruvbox Material Light Soft
# Colors from: https://github.com/sainnhe/gruvbox-material

# Only works in Linux console (TTY), not in terminal emulators
if [[ "$TERM" != "linux" ]]; then
  echo "Warning: This script only works in TTY (TERM=linux), not terminal emulators"
  exit 0
fi

# Gruvbox Material Light Soft palette
printf '\e]P0f2e5bc'  # black (background)
printf '\e]P1c14a4a'  # red
printf '\e]P26c782e'  # green
printf '\e]P3b47109'  # yellow
printf '\e]P445707a'  # blue
printf '\e]P5945e80'  # magenta
printf '\e]P64c7a5d'  # cyan
printf '\e]P7654735'  # white (foreground)
printf '\e]P8928374'  # bright black (gray)
printf '\e]P9c14a4a'  # bright red
printf '\e]PA6c782e'  # bright green
printf '\e]PBc35e0a'  # bright yellow (orange)
printf '\e]PC45707a'  # bright blue
printf '\e]PD945e80'  # bright magenta
printf '\e]PE4c7a5d'  # bright cyan
printf '\e]PF3c3836'  # bright white (darker fg)
clear
