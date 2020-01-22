#!/bin/bash

if [[ $# == 2 ]]; then
  a=$(echo "$1+$2" |bc )
  echo $a
else
  echo "Relacez le sript et entrez 2 parametre SVP"
  echo "Ex: ./nomScript par1 par2"
fi

##################################################################################

#!/bin/bash

var=$(($#+1))
plusGrandParm=0

for (( i = 1; i < var; i++ )); do
  eval a=\$$i
  for element in $*
  do
    if [ $a -gt $element ]  && [ $a -gt $plusGrandParm ]; then
      plusGrandParm=$a
    fi
  done


done

echo $plusGrandParm
############################################################################################
#!/bin/bash

a=0
while [[ a -lt 5 ]]; do
  a=$(($a+1))
  echo $a
done

###########################################################################################
#!/bin/bash

if [[ $# = 2 ]]; then

  var=1
  while [[ $var = 1 || $var = 2 || $var = 3 || $var = 4 ]]; do
    echo "Que voulez vous faire ???
    1- + addition;
    2- - subtraction;
    3- x multiplication;
    4- / division;
    Selectionez un chiffre proposes pour valider votre actions ou appuyez sur Entree pour quiter"

    read var
    case $var in
      "1" )
            echo  "Resultat de operation : "
            echo $(($1+$2))
        ;;
        "2" )
            echo  "Resultat de operation : "
            echo $(($1-$2))
            ;;
        "3" )
            echo  "Resultat de operation : "
            echo $(($1*$2))
            ;;
        "4" )
            echo  "Resultat de operation : "
            a=$(echo "$1/$2" |bc -l)
            echo $a
            ;;
    esac

  done

else
  echo "Entree 2 parametre SVP !!!"
fi

###################################################################################################
