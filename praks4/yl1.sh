#!/bin/bash

#arvukontroll

echo -n "Sisesta suvaline täisarv: "
read arv
#arvutma j22k 2ga
jaak=$(( $arv % 2 ))
if [ $jaak -eq 0 ]
then
	echo "$arv on paaris"
else
	echo "$arv on paaritu"
fi

