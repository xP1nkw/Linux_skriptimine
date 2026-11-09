
#!/bin/bash
# Skript arvutab, mitu bussi on täielikult täidetud ja mitu reisijat jääb maha.

echo -n "Sisesta reisijate arv: "
read reisijad

echo -n "Sisesta kohtade arv bussis: "
read kohad

# Arvutame täielikult täidetud busside arvu
bussid=$(expr $reisijad / $kohad)

# Arvutame maha jäävate reisijate arvu
maha=$(expr $reisijad % $kohad)

echo "Täielikult täidetud busse: $bussid"
echo "Maha jäänud reisijaid: $maha"
