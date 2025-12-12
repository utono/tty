#!/usr/bin/env bash
# ~/utono/tty/tty-font-large.sh
# Set TTY font to a Terminus font selected by user

# Only works in Linux console (TTY), not in terminal emulators
if [[ "$TERM" != "linux" ]]; then
  echo "Warning: This script only works in TTY (TERM=linux), not terminal emulators"
  exit 0
fi

# Install terminus-font if not installed
if ! pacman -Qi terminus-font &>/dev/null; then
  echo "Installing terminus-font..."
  if command -v paru &>/dev/null; then
    paru -S --noconfirm terminus-font
  else
    sudo pacman -S --noconfirm terminus-font
  fi
fi

# Terminus font options (largest to smallest)
# Format: ter-[type][size][style]
#   type: v=VGA compatible, c=CP437, u=Unicode
#   size: 12, 14, 16, 18, 20, 22, 24, 28, 32
#   style: n=normal, b=bold
fonts=(
  "ter-v32b:Terminus 32px bold (largest)"
  "ter-v32n:Terminus 32px normal"
  "ter-v28b:Terminus 28px bold"
  "ter-v28n:Terminus 28px normal"
  "ter-v24b:Terminus 24px bold"
  "ter-v24n:Terminus 24px normal"
  "ter-v22b:Terminus 22px bold"
  "ter-v22n:Terminus 22px normal"
  "ter-v20b:Terminus 20px bold"
  "ter-v20n:Terminus 20px normal"
  "ter-v18b:Terminus 18px bold"
  "ter-v18n:Terminus 18px normal"
  "ter-v16b:Terminus 16px bold"
  "ter-v16n:Terminus 16px normal"
  "ter-v14b:Terminus 14px bold"
  "ter-v14n:Terminus 14px normal"
)

echo "Select a Terminus font:"
echo ""
for i in "${!fonts[@]}"; do
  name="${fonts[$i]%%:*}"
  desc="${fonts[$i]#*:}"
  printf "  %2d) %-10s  %s\n" "$((i + 1))" "$name" "$desc"
done
echo ""
echo "   0) Cancel"
echo ""

read -rp "Enter choice [1-${#fonts[@]}]: " choice

if [[ "$choice" == "0" || -z "$choice" ]]; then
  echo "Cancelled"
  exit 0
fi

if ! [[ "$choice" =~ ^[0-9]+$ ]] || ((choice < 1 || choice > ${#fonts[@]})); then
  echo "Invalid choice"
  exit 1
fi

font="${fonts[$((choice - 1))]%%:*}"

if setfont "$font" 2>/dev/null; then
  echo "Set TTY font to: $font"
  exit 0
else
  echo "Error: Failed to set font '$font'"
  exit 1
fi
