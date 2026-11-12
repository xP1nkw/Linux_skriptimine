#!/bin/bash
# Skript loeb süsteemi kellaaja ja tervitab kasutajat nimepidi.

tund=$(date +%H)
tund=$((10#$tund))
kasutaja=$(id -un)

if test "$tund" -ge 6 -a "$tund" -lt 12; then
    echo "Tere hommikust, $kasutaja!"
elif test "$tund" -ge 12 -a "$tund" -lt 18; then
    echo "Tere päevast, $kasutaja!"
elif test "$tund" -ge 18 -a "$tund" -lt 22; then
    echo "Tere õhtust, $kasutaja!"
elif test "$tund" -ge 22 -a "$tund" -lt 24; then
    echo "Head ööd, $kasutaja!"
elif test "$tund" -ge 0 -a "$tund" -lt 6; then
    echo "Head ööd, $kasutaja!"
fi

