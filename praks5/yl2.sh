#!/bin/bash
# Skript küsib kuunumbrit ja väljastab sellele vastava aastaaja.

echo -n "Sisesta kuu number: "
read -r kuu

if [[ ! "$kuu" =~ ^[0-9]+$ ]]; then
    echo "Sellist kuud ei ole"
elif test "$kuu" -eq 1 -o "$kuu" -eq 2 -o "$kuu" -eq 12; then
    echo "Praegu on talv"
elif test "$kuu" -ge 3 -a "$kuu" -le 5; then
    echo "Praegu on kevad"
elif test "$kuu" -ge 6 -a "$kuu" -le 8; then
    echo "Praegu on suvi"
elif test "$kuu" -ge 9 -a "$kuu" -le 11; then
    echo "Praegu on sügis"
else
    echo "Sellist kuud ei ole"
fi
