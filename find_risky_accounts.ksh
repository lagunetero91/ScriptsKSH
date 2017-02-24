#!/bin/ksh

set -A usuarios $(cut -d: -f1 /etc/passwd)
set -A uid $(cut -d: -f3 /etc/passwd)

touch /var/log/risky_acount

echo "Nombre:  ${usuarios[@]}"
echo "UIDS: ${uid[@]}"
i=0
j=0
for i in "${usuarios[@]}"
do
	if (( ${uid[j]} >= 500 )) 
	then
   	Campo=$(grep "${usuarios[j]}" /etc/shadow | cut -d: -f8)
    	if [[ $Campo == "" ]]
    		then 
				echo "Usuario ${usuarios[j]} no tiene caducidad" >> /var/log/risky_acount
    	fi
	fi
((j++))
done
