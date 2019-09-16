#!/bin/bash

Eu sou Trybe e estou aprendendo git and github

API_KEY="https://pixabay.com/get/35bbf209e13e39d2_640.jpg"
read -p"o que voce procura? " SEARCH_TERM
read -p"quantidade de termos" QTY_RESULTS

if [ $quantidade =~ 3 ] 
then
    echo "digite uma quantidade igual ou maior que 3"
else    
    
    RESPONSE=curl -s -G -L --data-urlencode "key=$API_KEY" --data-urlencode "q=$SEARCH_TERM" --data-urlencode "image_type=photo" --data-urlencode "per_page=$QTY_RESULTS" https://pixabay.com/api
    echo $RESPONSE
fi
#Bolivar & Douglas