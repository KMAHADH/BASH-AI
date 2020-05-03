#!/bin/bash

function typer()
{
s=$texter
for ((i=0; i<${#s} ; i++)) ; do 
  echo -n "${s:i:1}"
  sleep 0.01
done
}

function thinker()
{
s=$texter
for ((i=0; i<${#s} ; i++)) ; do 
  echo -n "${s:i:1}"
  sleep 0.2
done
}
 echo ""
 texter=`echo "Hello! I'm Sheller the Parodic AI"`
 typer
 echo ""

    read -p "Seems like i know you...Do I? [Yy/Nn] " -n 1 -r
    echo    # (optional) move to a new line
    if [[ $REPLY =~ ^[Yy]$ ]]
    then
    echo ""
    texter=`echo "Hmm, Lemme see..."`
    typer
    echo ""
    texter=`echo "Is it..."`
    typer
    echo ""    
    Friends=`cat ./Friends.txt`
    Friends2=`echo "$Friends" | awk '{print $1 " " $2}'`
    readarray -t Friends3 < <(echo "$Friends2")
    echo ""
    echo 'Please enter your choice by the number: '
    echo ""
    COLUMNS=12
    select choice in "${Friends3[@]}"
    do
    [[ -n $choice ]] || { echo "Invalid choice. Please try again." >&2; continue; }
    break # valid choice was made; exit prompt.
    done
    echo ""
    echo "Welcome $choice!"
    echo ""
    else
    echo ""
    texter=`echo "Goodbye!"`
    typer
    fi


 texter=`wget -q http://www.brainyquote.com/link/quotebr.js -O - | \
    grep -o -E "\"[A-Z].*\."`
 typer
 echo ""
 echo ""
 texter=`echo "Words of TRUE wisdom..."`
 typer
 echo ""
 echo ""
 texter=`echo "Are they not...?"`
 typer
 echo ""
 echo ""
 texter=`echo "Anyway...Let's move on!"`
 typer
 echo ""
 echo ""
 texter=`echo "Let's start you off with the days update..."`
 typer
 echo ""
 echo ""
 texter=`echo "The time and date currently are...:"`
 typer
 echo ""
 echo ""
 texter=`date +%A" "%r`
 typer
 echo ""
 echo ""
 texter=`date +%d"-"%b"-"%Y`
 typer
 echo ""
 echo ""
 texter=`timedatectl | grep "Time zone"`
 typer
 echo ""
 echo ""
 texter=`echo "Your IP address seems to be...:"`
 typer
 echo ""
 echo ""
 texter=`curl -s https://ipinfo.io/ip`
 addresser=`echo $texter`
 typer
 echo ""
 echo ""
 texter=`echo "Your approximate location address seems to be...:"`
 typer
 echo ""
 echo ""
 texter=`curl -s wttr.in | grep report |  cut -f2 -d":"`
 typer
 echo ""
 echo ""
 texter=`echo "The approximate weather in your area seems to be...:"`
 typer
 echo ""
 echo ""
 texter=`curl -s wttr.in | head -7`
 typer
 chance=`echo $RANDOM % 100 + 1 | bc`
 chance2=$(echo $(( `echo $chance` % 3 ))) 
 if [ "$chance2" -eq "0" ] 
 then
 bash ./Quotes.sh
 else
 echo ""
 echo ""
 fi
 texter=`echo "Please choose an option by selecting the respective number below:"`
 typer
 echo ""
 echo ""
 
