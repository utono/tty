#!/usr/bin/env bash
# ~/utono/tty/tty-colorschemes-light.sh
# Set TTY colorscheme from available light themes
# Light themes sourced from: ~/utono/themes/.config/themes/theme-order.txt

# Only works in Linux console (TTY), not in terminal emulators
if [[ "$TERM" != "linux" ]]; then
  echo "Warning: This script only works in TTY (TERM=linux), not terminal emulators"
  exit 0
fi

# Light themes from theme-order.txt (in order from darker to lightest)
declare -a LIGHT_THEMES=(
  "catppuccin-latte"
  "dawnfox"
  "tokyonight-day"
  "dayfox"
  "rose-pine-dawn"
  "gruvbox-material-light-hard"
  "everforest-light-soft"
  "solarized-light"
  "github-light-high-contrast"
  "gruvbox-material-light"
  "everforest-light-hard"
  "everforest-light-medium"
  "gruvbox-material-light-soft"
)

# Display names for the themes
declare -A THEME_DISPLAY=(
  ["catppuccin-latte"]="Catppuccin Latte"
  ["dawnfox"]="Dawnfox"
  ["tokyonight-day"]="Tokyo Night Day"
  ["dayfox"]="Dayfox"
  ["rose-pine-dawn"]="Rose Pine Dawn"
  ["gruvbox-material-light-hard"]="Gruvbox Material Light Hard"
  ["everforest-light-soft"]="Everforest Light Soft"
  ["solarized-light"]="Solarized Light"
  ["github-light-high-contrast"]="GitHub Light High Contrast"
  ["gruvbox-material-light"]="Gruvbox Material Light"
  ["everforest-light-hard"]="Everforest Light Hard"
  ["everforest-light-medium"]="Everforest Light Medium"
  ["gruvbox-material-light-soft"]="Gruvbox Material Light Soft"
)

# TTY color palettes (16 colors: P0-PF)
# Format: background, red, green, yellow, blue, magenta, cyan, foreground,
#         bright_black, bright_red, bright_green, bright_yellow, bright_blue, bright_magenta, bright_cyan, bright_white
apply_theme() {
  local theme="$1"
  case "$theme" in
    "catppuccin-latte")
      # Catppuccin Latte palette
      printf '\e]P0eff1f5'  # black (background)
      printf '\e]P1d20f39'  # red
      printf '\e]P240a02b'  # green
      printf '\e]P3df8e1d'  # yellow
      printf '\e]P41e66f5'  # blue
      printf '\e]P58839ef'  # magenta
      printf '\e]P6179299'  # cyan
      printf '\e]P74c4f69'  # white (foreground)
      printf '\e]P89ca0b0'  # bright black (gray)
      printf '\e]P9d20f39'  # bright red
      printf '\e]PA40a02b'  # bright green
      printf '\e]PBfe640b'  # bright yellow (orange/peach)
      printf '\e]PC1e66f5'  # bright blue
      printf '\e]PD8839ef'  # bright magenta
      printf '\e]PE179299'  # bright cyan
      printf '\e]PF5c5f77'  # bright white (subtext)
      ;;
    "dawnfox")
      # Dawnfox palette
      printf '\e]P0faf4ed'  # black (background)
      printf '\e]P1b4637a'  # red
      printf '\e]P2618774'  # green
      printf '\e]P3ea9d34'  # yellow
      printf '\e]P4286983'  # blue
      printf '\e]P5907aa9'  # magenta
      printf '\e]P656949f'  # cyan
      printf '\e]P7575279'  # white (foreground)
      printf '\e]P89893a5'  # bright black (gray)
      printf '\e]P9b4637a'  # bright red
      printf '\e]PA618774'  # bright green
      printf '\e]PBd7827e'  # bright yellow (orange)
      printf '\e]PC286983'  # bright blue
      printf '\e]PD907aa9'  # bright magenta
      printf '\e]PE56949f'  # bright cyan
      printf '\e]PF393552'  # bright white (darker fg)
      ;;
    "tokyonight-day")
      # Tokyo Night Day palette
      printf '\e]P0e1e2e7'  # black (background)
      printf '\e]P1f52a65'  # red
      printf '\e]P2587539'  # green
      printf '\e]P38c6c3e'  # yellow
      printf '\e]P42e7de9'  # blue
      printf '\e]P59854f1'  # magenta
      printf '\e]P6007197'  # cyan
      printf '\e]P73760bf'  # white (foreground)
      printf '\e]P8848cb5'  # bright black (gray)
      printf '\e]P9f52a65'  # bright red
      printf '\e]PA587539'  # bright green
      printf '\e]PBb15c00'  # bright yellow (orange)
      printf '\e]PC2e7de9'  # bright blue
      printf '\e]PD9854f1'  # bright magenta
      printf '\e]PE007197'  # bright cyan
      printf '\e]PF1a1a1a'  # bright white (darker fg)
      ;;
    "dayfox")
      # Dayfox palette
      printf '\e]P0f6f2ee'  # black (background)
      printf '\e]P1a5222f'  # red
      printf '\e]P2396847'  # green
      printf '\e]P3ac5402'  # yellow
      printf '\e]P42848a9'  # blue
      printf '\e]P56e33ce'  # magenta
      printf '\e]P6287980'  # cyan
      printf '\e]P73d2b5a'  # white (foreground)
      printf '\e]P8a8a29e'  # bright black (gray)
      printf '\e]P9a5222f'  # bright red
      printf '\e]PA396847'  # bright green
      printf '\e]PBde5d0e'  # bright yellow (orange)
      printf '\e]PC2848a9'  # bright blue
      printf '\e]PD6e33ce'  # bright magenta
      printf '\e]PE287980'  # bright cyan
      printf '\e]PF1d344f'  # bright white (darker fg)
      ;;
    "rose-pine-dawn")
      # Rose Pine Dawn palette
      printf '\e]P0faf4ed'  # black (background)
      printf '\e]P1b4637a'  # red
      printf '\e]P2286983'  # green (pine)
      printf '\e]P3ea9d34'  # yellow (gold)
      printf '\e]P456949f'  # blue (foam)
      printf '\e]P5907aa9'  # magenta (iris)
      printf '\e]P6d7827e'  # cyan (rose)
      printf '\e]P7575279'  # white (foreground)
      printf '\e]P89893a5'  # bright black (muted)
      printf '\e]P9b4637a'  # bright red
      printf '\e]PA286983'  # bright green
      printf '\e]PBea9d34'  # bright yellow
      printf '\e]PC56949f'  # bright blue
      printf '\e]PD907aa9'  # bright magenta
      printf '\e]PEd7827e'  # bright cyan
      printf '\e]PF393552'  # bright white (darker fg)
      ;;
    "gruvbox-material-light-hard")
      # Gruvbox Material Light Hard palette
      printf '\e]P0f9f5d7'  # black (background)
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
      ;;
    "everforest-light-soft")
      # Everforest Light Soft palette
      printf '\e]P0f3ead3'  # black (background)
      printf '\e]P1f85552'  # red
      printf '\e]P28da101'  # green
      printf '\e]P3dfa000'  # yellow
      printf '\e]P43a94c5'  # blue
      printf '\e]P5df69ba'  # magenta
      printf '\e]P635a77c'  # cyan
      printf '\e]P75c6a72'  # white (foreground)
      printf '\e]P8939f91'  # bright black (gray)
      printf '\e]P9f85552'  # bright red
      printf '\e]PA8da101'  # bright green
      printf '\e]PBf57d26'  # bright yellow (orange)
      printf '\e]PC3a94c5'  # bright blue
      printf '\e]PDdf69ba'  # bright magenta
      printf '\e]PE35a77c'  # bright cyan
      printf '\e]PF3c3836'  # bright white (darker fg)
      ;;
    "solarized-light")
      # Solarized Light palette
      printf '\e]P0fdf6e3'  # black (background - base3)
      printf '\e]P1dc322f'  # red
      printf '\e]P2859900'  # green
      printf '\e]P3b58900'  # yellow
      printf '\e]P4268bd2'  # blue
      printf '\e]P5d33682'  # magenta
      printf '\e]P62aa198'  # cyan
      printf '\e]P7657b83'  # white (foreground - base00)
      printf '\e]P893a1a1'  # bright black (base1)
      printf '\e]P9cb4b16'  # bright red (orange)
      printf '\e]PA859900'  # bright green
      printf '\e]PBb58900'  # bright yellow
      printf '\e]PC268bd2'  # bright blue
      printf '\e]PD6c71c4'  # bright magenta (violet)
      printf '\e]PE2aa198'  # bright cyan
      printf '\e]PF073642'  # bright white (base02)
      ;;
    "github-light-high-contrast")
      # GitHub Light High Contrast palette
      printf '\e]P0ffffff'  # black (background)
      printf '\e]P1a40e26'  # red
      printf '\e]P2055d20'  # green
      printf '\e]P3845306'  # yellow
      printf '\e]P40349b4'  # blue
      printf '\e]P5622cbc'  # magenta
      printf '\e]P61b7c83'  # cyan
      printf '\e]P70e1116'  # white (foreground)
      printf '\e]P86e7781'  # bright black (gray)
      printf '\e]P9a40e26'  # bright red
      printf '\e]PA055d20'  # bright green
      printf '\e]PBbc4c00'  # bright yellow (orange)
      printf '\e]PC0349b4'  # bright blue
      printf '\e]PD622cbc'  # bright magenta
      printf '\e]PE1b7c83'  # bright cyan
      printf '\e]PF24292f'  # bright white (darker fg)
      ;;
    "gruvbox-material-light")
      # Gruvbox Material Light (Medium) palette
      printf '\e]P0fbf1c7'  # black (background)
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
      ;;
    "everforest-light-hard")
      # Everforest Light Hard palette
      printf '\e]P0fffbef'  # black (background)
      printf '\e]P1f85552'  # red
      printf '\e]P28da101'  # green
      printf '\e]P3dfa000'  # yellow
      printf '\e]P43a94c5'  # blue
      printf '\e]P5df69ba'  # magenta
      printf '\e]P635a77c'  # cyan
      printf '\e]P75c6a72'  # white (foreground)
      printf '\e]P8939f91'  # bright black (gray)
      printf '\e]P9f85552'  # bright red
      printf '\e]PA8da101'  # bright green
      printf '\e]PBf57d26'  # bright yellow (orange)
      printf '\e]PC3a94c5'  # bright blue
      printf '\e]PDdf69ba'  # bright magenta
      printf '\e]PE35a77c'  # bright cyan
      printf '\e]PF3c3836'  # bright white (darker fg)
      ;;
    "everforest-light-medium")
      # Everforest Light Medium palette
      printf '\e]P0fdf6e3'  # black (background)
      printf '\e]P1f85552'  # red
      printf '\e]P28da101'  # green
      printf '\e]P3dfa000'  # yellow
      printf '\e]P43a94c5'  # blue
      printf '\e]P5df69ba'  # magenta
      printf '\e]P635a77c'  # cyan
      printf '\e]P75c6a72'  # white (foreground)
      printf '\e]P8939f91'  # bright black (gray)
      printf '\e]P9f85552'  # bright red
      printf '\e]PA8da101'  # bright green
      printf '\e]PBf57d26'  # bright yellow (orange)
      printf '\e]PC3a94c5'  # bright blue
      printf '\e]PDdf69ba'  # bright magenta
      printf '\e]PE35a77c'  # bright cyan
      printf '\e]PF3c3836'  # bright white (darker fg)
      ;;
    "gruvbox-material-light-soft")
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
      ;;
    *)
      echo "Unknown theme: $theme"
      return 1
      ;;
  esac
  clear
  echo "Applied: ${THEME_DISPLAY[$theme]}"
}

# Display menu and get selection
show_menu() {
  echo "Select a light colorscheme for TTY:"
  echo
  for i in "${!LIGHT_THEMES[@]}"; do
    printf "  %2d) %s\n" "$((i + 1))" "${THEME_DISPLAY[${LIGHT_THEMES[$i]}]}"
  done
  echo
  printf "Enter selection (1-%d): " "${#LIGHT_THEMES[@]}"
}

# Main
show_menu
read -r selection

# Validate input
if [[ ! "$selection" =~ ^[0-9]+$ ]] || ((selection < 1 || selection > ${#LIGHT_THEMES[@]})); then
  echo "Invalid selection"
  exit 1
fi

# Apply selected theme
selected_theme="${LIGHT_THEMES[$((selection - 1))]}"
apply_theme "$selected_theme"
