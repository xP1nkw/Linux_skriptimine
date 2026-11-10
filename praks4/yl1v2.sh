#!/bin/bash

if [ "$#" -ne 1 ]
then
        echo "Käivita skript ühe täisarvuga. Näiteks: ./yl1v2.sh 3"
        exit 1
fi

arv="$1"

if ! [[ "$arv" =~ ^[+-]?[0-9]+$ ]]
then
        echo "Viga: argument peab olema täisarv."
        exit 1
fi

viimane_number="${arv: -1}"
jaak=$(( viimane_number % 2 ))

if [ "$jaak" -eq 0 ]
then
        echo "$arv on paaris"
else
        echo "$arv on paaritu"
fi
