#!/bin/bash
MESSAGE=$1
if [ -z $MESSAGE ]
then
   echo "Ops, você precisa passar uma mensagem como argumento!"
else
   curl -X POST -H 'Content-type: application/json' --data "{\"text\":\"$MESSAGE\"}" https://hooks.slack.com/services/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
   echo "Mensagem enviada!"
fi
#Bolivar & Douglas