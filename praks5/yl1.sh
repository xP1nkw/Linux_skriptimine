#!/bin/bash
# Skript küsib vanust ja väljastab vanuserühma või veateate.

read -r -p "Sisesta (oma) vanus: " vanus

if [[ ! "$vanus" =~ ^[0-9]+$ ]]; then
    echo "Vigane sisend"
elif test "$vanus" -ge 0 -a "$vanus" -lt 11; then
    echo "Oled laps"
elif test "$vanus" -ge 11 -a "$vanus" -lt 18; then
    echo "Oled nooruk"
elif test "$vanus" -ge 18 -a "$vanus" -lt 63; then
    echo "Oled täiskasvanu"
elif test "$vanus" -ge 63; then
    echo "Oled seenior"
else
    echo "Vigane sisend"
fi
