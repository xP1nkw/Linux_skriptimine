#!/bin/bash
# Küsib operatsioonisüsteemi valikut ja kontrollib seda pesastatud if-lausete abil.

echo "1. Unix (Sun Os)"
echo "2. Linux (Red Hat)"
read -r -p "Select your os choice [1 or 2]? " osch

if [ "$osch" = "1" ]; then
    echo "You Pick up Unix (Sun Os)"
else
    if [ "$osch" = "2" ]; then
        echo "You Pick up Linux (Red Hat)"
    else
        echo "What you don't like Unix/Linux OS."
    fi
fi
