#!/bin/bash

schar=(a b c d e f g h i j k l m n o p q r s t u v w x y z)
bchar=(A B C D E F G H I J K L M N O P Q R S T U V W X Y Z)
nchar=(1 2 3 4 5 6 7 8 9 0)
wchar=("!" "@" "#" "$" "%" "^" "&" "*" "<" ">")

read -p "Enter the length of the pw:" length
output=""
for ((i=0; i<$length; i++)); do
  s=$((1 + $RANDOM % 4))
  if [[ $s -eq 1 ]]; then
    c=$((0 + $RANDOM % 25))
    output+=${schar[c]}
  elif [[ $s -eq 2 ]]; then 
    c=$((0 + $RANDOM % 25))
    output+=${bchar[c]}
  elif [[ $s -eq 3 ]]; then 
    c=$((0 + $RANDOM % 9))
    output+=${nchar[c]}
  else 
    c=$((0 + $RANDOM % 9))
    output+=${wchar[c]}
  fi
done
echo $output
