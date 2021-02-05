#!/bin/bash
echo -n "Insert word: "
read a
echo -n "Insert word length: "
read b
i=1
while [ $i -le $b ]; do
y=$(echo $a | cut -c $i)
if [ $y = "a" ]; then
let voc=voc+1
elif [ $y = "e" ]; then
let voc=voc+1
elif [ $y = "i" ]; then
let voc=voc+1
elif [ $y = "o" ]; then
let voc=voc+1
elif [ $y = "u" ]; then
let voc=voc+1
else
let cons=cons+1
fi
i=$(( $i + 1 ))
done
if [ $cons -le $voc ]; then
echo "The word $a has fewer consonants than vowels"
elif [ $cons -eq $voc ]; then
echo "The word $a has the same number of vowels than consonants"
else
echo "The word $a has more consonants than vowels"
fi
