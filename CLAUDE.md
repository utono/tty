# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

TTY customization scripts for the Linux console (not terminal emulators). These scripts configure colorschemes and fonts for the raw Linux virtual terminal (where `TERM=linux`).

## Scripts

- **tty-colorschemes-light.sh** - Interactive menu to apply light colorschemes (13 themes from Catppuccin, Gruvbox, Everforest, etc.) using VT escape sequences (`\e]Pn`)
- **tty-font-large.sh** - Interactive menu to set Terminus console fonts (requires `terminus-font` package, sizes 14-32px)

## Usage

Scripts must be run directly in a TTY (Ctrl+Alt+F1-F6), not in a terminal emulator:

```bash
./tty-colorschemes-light.sh  # Apply light colorscheme
./tty-font-large.sh          # Change font size
```

## Technical Notes

- TTY color escape sequence format: `\e]Pnrrggbb` where n=0-F (hex) for 16-color palette
- Font naming: `ter-[type][size][style]` (e.g., `ter-v32b` = VGA-compatible 32px bold)
- Theme source reference: `~/utono/themes/.config/themes/theme-order.txt`
