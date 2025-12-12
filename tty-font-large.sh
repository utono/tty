#!/usr/bin/env bash
# ~/utono/tty/tty-font-large.sh
# Set TTY font to a larger size for better readability

# Only works in Linux console (TTY), not in terminal emulators
if [[ "$TERM" != "linux" ]]; then
  echo "Warning: This script only works in TTY (TERM=linux), not terminal emulators"
  exit 0
fi

# Try fonts in order of preference (largest first)
fonts=(
  "latarcyrheb-sun32"   # 32px, good Unicode coverage
  "solar24x32"          # 24x32px
  "ter-v32n"            # Terminus 32px (if terminus-font installed)
  "ter-v28n"            # Terminus 28px
  "ter-v24n"            # Terminus 24px
)

for font in "${fonts[@]}"; do
  if setfont "$font" 2>/dev/null; then
    echo "Set TTY font to: $font"
    exit 0
  fi
done

echo "Warning: No large fonts found. Install terminus-font for more options:"
echo "  paru -S terminus-font"
exit 1
