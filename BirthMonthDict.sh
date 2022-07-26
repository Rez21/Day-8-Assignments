#!/bin/bash
iCount=50
declare -A birth_day

echo "The birthday month and year of $iCount is are: "

for(( i = 1; i <= iCount; i++ ))
do
    (( birthMonth = RANDOM % 12 + 1 ))
    (( birthYear = RANDOM % 2 + 92 ))
    echo "i $i has birthday in month $birthMonth year $birthYear "
    
    birth_day[$birthMonth]+=" ${i}"
done

for month in ${!birth_day[@]}
do
    echo "The is who are having birthday in month $month are: "
    for i in ${birth_day[$month]}
    do
        echo -n "$i ";
    done
    echo
done

