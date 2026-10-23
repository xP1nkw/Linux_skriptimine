#!/bin/bash

# Skript tervitab kasutajat ja muudab kasutajanime esimese tähe suureks

echo -n "Tere, "
kasutaja=$(whoami)
kasutaja="${kasutaja^}"
echo -n "$kasutaja"
echo "!"
