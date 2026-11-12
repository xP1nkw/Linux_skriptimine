#!/bin/bash
# Skript küsib kellaaega tundides ja tervitab vastavalt kellaajale.

echo -n "Sisesta aja väärtus (tund 0–23): "
read -r tund

if [[ ! "$tund" =~ ^[0-9]+$ ]] || test "$tund" -lt 0 -o "$tund" -gt 23; then
    echo "Vigane sisend: sisesta täisarv vahemikus 0 kuni 23."
elif test "$tund" -ge 6 -a "$tund" -lt 12; then
    echo "Tere hommikust"
elif test "$tund" -ge 12 -a "$tund" -lt 18; then
    echo "Tere päevast"
elif test "$tund" -ge 18 -a "$tund" -lt 22; then
    echo "Tere õhtust"
elif [[ "$tund" -ge 22 || "$tund" -lt 6 ]]; then
    echo "Head ööd!"
fi
