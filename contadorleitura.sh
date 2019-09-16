#!/bin/bash
echo "-----------------------------------------------------------------"
echo "CONTADOR DE TEMPO EM UMA LEITURA"
echo "Abrindo Programa"
sleep 1
#variaveis e loop condicional
res="y"
while [ $res="y" ]
do
    read -p "Coloque aqui um texto valido aqui: " text
    text_confer="([Aa-zZ0-9]+.txt)"
    contagem=`wc -w $text | awk "{print $1}"`
    valor=$*
    #condiçao
    if [ -z $text ]; then
        echo "Ops, arquivo não existe!"
        echo "Digite novamente ou interrompa o programa"
    elif [[ $text =~ $text_confer ]]; then
        valor=$contagem / 300
        echo "O tempo total gasto foi de $valor minutos."
    else
        echo "Ops, você precisa passar um arquivo como argumento!"
        echo "Digite novamente ou interrompa o programa"
    fi
    read -p " Deseja continuar? [y/n] " res
done
#fechamento do programa
echo "Encerrando Programa"
echo ".................................................................."
sleep 2
echo "PROGRAMA ENCERRADO!!!"
sleep 1
echo "Obrigado"
sleep 1
echo "Volte sempre!!!"
echo "-------------------------------------------------------------------"

#Bolivar & Douglas
