#!/bin/bash
# Opens Guaita PDF Edit (English) in app mode (window without tabs or address bar).
# Keep this file in the same folder as guaita_pdf_edit_X.Y_EN_app.html
# Uses the most recent *_EN_app.html file in this folder.
# macOS: double-click (if it does not run: chmod +x Open_Guaita_PDF_Edit_app_EN.command). Linux: ./Open_Guaita_PDF_Edit_app_EN.command

DIR="$(cd "$(dirname "$0")" && pwd)"
APP="$(ls -t "$DIR"/guaita_pdf_edit_*_app.html 2>/dev/null | grep '_EN_app.html$' | head -n 1)"
if [ -z "$APP" ]; then
  echo "No guaita_pdf_edit_*_EN_app.html file found in: $DIR"
  read -n 1 -s -r -p "Press a key to close..."
  exit 1
fi
URL="file://${APP// /%20}"
SIZE="--window-size=1500,950"

if [ "$(uname)" = "Darwin" ]; then
  for B in "Google Chrome" "Microsoft Edge" "Brave Browser" "Chromium"; do
    if [ -d "/Applications/$B.app" ] || [ -d "$HOME/Applications/$B.app" ]; then
      open -na "$B" --args --app="$URL" "$SIZE"
      exit 0
    fi
  done
  echo "Chrome, Edge, Brave or Chromium not found (Safari and Firefox have no app mode). Opening in a tab."
  open "$APP"
else
  for B in google-chrome google-chrome-stable microsoft-edge microsoft-edge-stable chromium chromium-browser brave-browser; do
    if command -v "$B" >/dev/null 2>&1; then
      nohup "$B" --app="$URL" "$SIZE" >/dev/null 2>&1 &
      exit 0
    fi
  done
  echo "No Chromium-based browser found. Opening in a tab."
  xdg-open "$APP"
fi
