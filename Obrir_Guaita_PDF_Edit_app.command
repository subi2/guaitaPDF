#!/bin/bash
# Obre Guaita PDF Edit en mode aplicació (finestra sense pestanyes ni barra d'adreces).
# Deixa aquest fitxer a la mateixa carpeta que guaita_pdf_edit_X.Y_app.html
# Fa servir el fitxer *_app.html més recent d'aquesta carpeta.
# macOS: doble clic (si no s'executa: chmod +x Obrir_Guaita_PDF_Edit_app.command). Linux: ./Obrir_Guaita_PDF_Edit_app.command

DIR="$(cd "$(dirname "$0")" && pwd)"
APP="$(ls -t "$DIR"/guaita_pdf_edit_*_app.html 2>/dev/null | grep -v '_EN_app.html$' | head -n 1)"
if [ -z "$APP" ]; then
  echo "No s'ha trobat cap fitxer guaita_pdf_edit_*_app.html a: $DIR"
  read -n 1 -s -r -p "Prem una tecla per tancar..."
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
  echo "No s'ha trobat Chrome, Edge, Brave ni Chromium (Safari i Firefox no tenen mode aplicació). S'obre en una pestanya."
  open "$APP"
else
  for B in google-chrome google-chrome-stable microsoft-edge microsoft-edge-stable chromium chromium-browser brave-browser; do
    if command -v "$B" >/dev/null 2>&1; then
      nohup "$B" --app="$URL" "$SIZE" >/dev/null 2>&1 &
      exit 0
    fi
  done
  echo "No s'ha trobat cap navegador Chromium. S'obre en una pestanya."
  xdg-open "$APP"
fi
