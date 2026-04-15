#!/bin/bash

# Pasta para salvar screenshots
DIR="$HOME/Pictures"

# Nome do arquivo com data/hora
FILE="$DIR/screenshot_$(date +%F_%H-%M-%S).png"

# Se houver argumento "area", usa slurp
if [ "$1" = "area" ]; then
    /usr/bin/grim -g "$(/usr/bin/slurp)" "$FILE"
else
    /usr/bin/grim "$FILE"
fi

# Opcional: copiar para clipboard (requer wl-clipboard)
if command -v wl-copy &>/dev/null; then
    wl-copy < "$FILE"
fi
