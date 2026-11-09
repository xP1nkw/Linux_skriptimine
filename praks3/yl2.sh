
#!/bin/bash
# Skript arvutab küpsisetordi valmistamiseks vajalike küpsisepakkide arvu.

echo -n "Sisesta aluskandiku pikkus (cm): "
read pikkus

echo -n "Sisesta aluskandiku laius (cm): "
read laius

echo -n "Sisesta küpsise suurus (cm): "
read kypsis

echo -n "Mitu kihti soovid tordile: "
read kihid

echo -n "Mitu küpsist on ühes pakis: "
read pakk

# Arvutame küpsiste arvu ühes kihis
pikkus_kupsised=$(expr $pikkus / $kypsis)
laius_kupsised=$(expr $laius / $kypsis)

# Arvutame küpsiste koguarvu
yhes_kihis=$(expr $pikkus_kupsised \* $laius_kupsised)
kokku=$(expr $yhes_kihis \* $kihid)

# Arvutame vajalike pakkide arvu (ümardame üles)
pakid=$(expr $kokku + $pakk - 1)
pakid=$(expr $pakid / $pakk)

echo "Tordi valmistamiseks on vaja $kokku küpsist."
echo "Poest tuleb osta $pakid pakki küpsiseid."
