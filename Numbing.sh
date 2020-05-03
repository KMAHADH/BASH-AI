#!/bin/bash


function typer()
{
s=$texter
for ((i=0; i<${#s} ; i++)) ; do 
  echo -n "${s:i:1}"
  sleep 0.05
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

function hinter()
{

    diff=$(($lottery-$guess))
    echo ""
    echo ""    
    abs=`echo $diff | sed 's/-//'`
    echo ""
    echo ""
    
    if [[ $abs == "1" ]]
    then
    texter=`echo "You're the Warmest!"`
    typer
    echo ""
    
    elif [[ $abs == "2" ]]
    then
    texter=`echo "You're Warmer!"`
    typer
    echo ""
    elif [[ $abs == "3" ]]
    then
    texter=`echo "You're Warm!"`
    typer
    echo ""
    else
    texter=`echo "You're not even Close!"`
    typer
    echo ""
    fi
}


function suptries()
{
    echo ""
    echo ""
    texter=`echo "Let's see how many tries did you take again...??"`
    thinker
    echo ""
    echo ""

    if [[ $gone == "1" ]]
    then
    texter=`echo "You're Good!"`
    typer
    echo ""
    echo ""
    texter=`echo "You only took $gone try!"`
    typer
    echo ""

    
    elif [[ $gone == "2" ]]
    then
    
    texter=`echo "You're Gettin' it!"`
    typer
    echo ""
    echo ""
    texter=`echo "You only took $gone tries!"`
    typer
    echo ""


    elif [[ $gone == "3" ]]
    then
    
    texter=`echo "So close, Yet so far...!"`
    typer
    echo ""
    texter=`echo "You took $gone tries!"`
    typer
    echo ""
    
    else
    texter=`echo "Oh, Come on!, What that many tries...What did you expect, A standing ovation...??"`
    typer
    echo ""
    echo ""
    texter=`echo "Seriously, You took $gone tries!"`
    typer
    echo ""
    echo ""
    texter=`echo "You should practice more!"`
    typer
    echo ""
    echo ""
    fi
    
    if [[ $numpool != "4" ]] || [[ $numdiff != "4" ]] || [[ $hinties != "0" ]]
    then
    echo ""
    texter=`echo "Game enough to take it up a Notch...??"`
    typer
    echo ""
    texter=`echo "Try again with increased difficulty, If you DARE...!!"`
    typer
    echo ""
    
    else 
    texter=`echo "I've the following prize for you..."`
    typer
    echo ""
    echo ""
    texter=`echo "Visit the following link in your browser..."`
    typer
    echo ""
    echo ""
    texter=`echo "https://thumbs.gfycat.com/BothRingedBedlingtonterrier-small.gif"`
    typer
    echo ""
    echo ""
    fi
    
    echo ""
    echo ""    
    DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
    
    read -p "Do you want to replay? [Yy/Nn] " -n 1 -r
    echo    # (optional) move to a new line
    if [[ $REPLY =~ ^[Yy]$ ]]
    then
    echo ""
    texter=`echo "Excellent choice!"`
    typer
    bash `echo $DIR`/numbing.sh
    else
    echo ""
    texter=`echo "Goodbye!"`
    typer
    fi
}

echo ""
texter=`echo This is a very simple game:`
typer
echo ""
texter=`echo I, the Computer thinks of a number, Can you guess what it is...??`
typer
echo ""
echo ""
texter=`echo Select an appropriate number pool range to begin with...`
typer
echo ""
echo ""
numpool=0
PS3='Please select your number pool range: '
options=("Small" "Medium" "Large" "Insane" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "Small")
            texter=`echo You chose: Small`
            typer
            echo ""
            texter=`echo Your number range is 0-10`
            typer
            numpool=1   
            echo ""
            break
            ;;
        "Medium")
            texter=`echo You chose: Medium`            
            typer
            echo ""
            texter=`echo Your number range is 0-25`
            typer
            numpool=2
            echo ""
            break
            ;;
        "Large")
            texter=`echo You chose: Large`
            typer
            echo ""
            texter=`echo Your number range is 0-100`
            typer
            numpool=3
            echo ""
            break
            ;;
        "Insane")
            texter=`echo You chose: Insane`
            typer
            echo ""
            texter=`echo Your number range is 0-100`
            typer
            numpool=4
            echo ""
            break
            ;;
        "Quit")
            texter="Feel like going back...??"
            typer
            echo ""
            texter="No problem!" 
	    typer
            echo ""
            exit
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done

echo ""
texter=`echo Select an appropriate difficulty level to begin with...`
typer
echo ""

numdiff=0
PS3='Please select your difficulty level: '
options=("Easy" "Medium" "Hard" "Insane" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "Easy")
            texter=`echo You chose: Easy`
            typer
            echo ""
            texter=`echo You have 8 tries to guess...`
            typer
            numdiff=8   
            echo ""
            break
            ;;
        "Medium")
            texter=`echo You chose: Medium`            
            typer
            echo ""
            texter=`echo You have 6 tries to guess...`
            typer
            numdiff=6
            echo ""
            break
            ;;
        "Hard")
            texter=`echo You chose: Hard`
            typer
            echo ""
            texter=`echo You have 4 tries to guess...`
            typer
            numdiff=4
            echo ""
            break
            ;;
        "Insane")
            texter=`echo You chose: Insane`
            typer
            echo ""
            texter=`echo You have 2 tries to guess...`
            typer
            numdiff=2
            echo ""
            break
            ;;
        "Quit")
            echo "Feel like going back...??"
            echo "No problem!" 
            exit
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done
echo ""
echo ""

hinties=0

read -p "Do you want hints? [Yy/Nn] " -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
    texter=`echo "Okay, I'll help you out on this one..."`
    typer
    hinties=1
    echo ""
    echo ""
else 
    texter=`echo "Feeling a litte too much brave, Are we...??"`
    typer
    hinties=0
    echo ""
    echo ""
fi

texter=`echo Hmm, Lemme think of a number in that range...`
thinker
echo ""
echo ""

if [ $numpool == "1" ]
then
lottery=`echo $(( $RANDOM % 10 + 1 ))`
elif [ $numpool == "2" ]
then
lottery=`echo $(( $RANDOM % 25 + 1 ))`
elif [ $numpool == "3" ]
then
lottery=`echo $(( $RANDOM % 100 + 1 ))`
else
lottery=`echo $(( $RANDOM % 1000 + 1 ))`
fi

texter=`echo Done!`
typer
echo ""
echo ""
texter=`echo Can you guess the number I thought of...??`
typer
echo ""
texter=`echo "Let us see, You have $numdiff tries!"`
typer
echo ""
echo ""
texter=`echo Goodluck!`
thinker
echo ""
echo ""
tries=`echo $numdiff`
gone="0"
#GameBegin
    
    
    for (( c=tries; c>=1; c-- ))
    do  
    texter=`echo "Guess a Number..."`
    typer
    echo ""
    read guess  
    let "gone++"
    
    if (( $guess == $lottery ))
    then
    echo ""
    texter=`echo "You guessed it!"`
    typer
    echo ""
    echo ""
    texter=`echo 'Perhaps, Artificial Intelligence needs the word "Artificial" to be stressed after all!'`
    typer
    echo ""
    texter=`echo 'I might be Fast, But not smart after all!'`
    typer
    echo ""
    suptries
    break
   
    else
    let "tries--"

   
    if [ "$tries" -ge "1" ]
    then
    
    texter=`echo "Nope try again!"`
    echo ""
    typer
    
    if [ "$hinties" -eq "1" ]
    then
    hinter
 
    else
    echo ""
    texter=`echo "No hints for you!"`
    typer
    echo ""
    fi

    texter=`echo "Let us see, You have $tries tries!"`
    typer
    echo ""
    else
    echo ""
    texter=`echo 'You ran out of tries...'`
    typer
    echo ""
    echo ""
    texter=`echo "Perhaps, It's time for man to finally take a back-seat..."`
    typer
    echo ""
    texter=`echo "Technology is finally here to take over!"`
    typer
    echo ""
    texter=`echo 'Bwa-Ha-Ha-Ha-Ha-Ha-Ha-Ha...'`
    thinker
    echo ""
    echo ""
    texter=`echo "Oh! um...Sorry!"`
    typer
    echo "" 
    texter=`echo "Don't mind me...I was just joking!"`
    typer
    echo ""
    texter=`echo "Anyways, The number is"`
    typer
    texter=`echo ""`
    thinker
    texter=`echo ""`
    thinker
    texter=`echo ""`
    thinker
    texter=`echo ""`
    thinker
    texter=`echo ""`
    thinker
    texter=`echo ""`
    thinker
    texter=`echo "."`
    thinker
    texter=`echo ""`
    thinker
    texter=`echo ""`
    thinker
    texter=`echo ""`
    thinker
    texter=`echo ""`
    thinker
    texter=`echo "."`
    thinker
    texter=`echo ""`
    thinker
    texter=`echo ""`
    thinker
    texter=`echo ""`
    thinker
    texter=`echo ""`
    thinker
    texter=`echo "."`
    thinker
    echo ""
    echo ""
    echo $lottery
    break
    fi
    fi
    done

