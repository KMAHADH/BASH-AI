function typer()
{
s=$texter
for ((i=0; i<${#s} ; i++)) ; do 
  echo -n "${s:i:1}"
  sleep 0.08
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

function 1isit {
 echo ""
 echo ""
 texter=`echo "And, On that note, Hear me wise words!..."`
 typer
 echo ""
 echo ""
 texter=`echo 'To "C" or not to "C"...'`
 typer
 echo ""
 echo ""
 texter=`echo 'Or wait, Hangon...'`
 typer
 echo ""
 echo ""
 texter=`echo 'To "C" or to "C++"...'`
 typer
 echo ""
 echo ""
 texter=`echo 'Umm, A, Nevermind, Forget it...'`
 typer
 echo ""
 echo ""
 texter=`echo "Wait, That's it!..."`
 typer
 echo ""
 echo ""
 texter=`echo 'To "C" dull or to "C#"...'`
 typer
 echo ""
 echo ""
 texter=`echo '"C" dull and "C#", Get it...??'`
 typer
 echo ""
 echo ""
 texter=`echo 'Sorry, My bad!...'`
 typer
 echo ""
 echo ""
 texter=`echo "We'll just pretend that never happened..."`
 typer
 echo ""
 echo ""
 texter=`echo "Besides, What have I got to do with the Sea, I mean See, I'm sorry 'C'  languages anyways..."`
 typer
 echo ""
 echo ""
 texter=`echo "I'm a BASH shell script!"`
 typer
 echo ""
 echo ""
 texter=`echo "Anywho!, What'd you like to do...??"`
 typer
 echo ""
 echo ""
 texter=`echo "Hey that sounded RAD! (Well, Atleast in my head or CPU or whatever...)"`
 typer
 echo ""
 echo ""
 texter=`echo "What's next ??, You bangin' your chest...?!"`
 typer
 echo ""
 echo ""
 texter=`echo "Okay, May bad I'll stop!"`
 typer
  echo ""
  echo ""
}

function 2isit {
 echo ""
 echo ""
 texter=`echo "Oh give me a home..."`
 typer
 echo ""
 echo ""
 texter=`echo 'Where the microchips roam...'`
 typer
 echo ""
 echo ""
 texter=`echo "Where the CPU's/GPU's play!"`
 typer
 echo ""
 echo ""
 texter=`echo "Where seldom is heard..."`
 typer
 echo ""
 echo ""
 texter=`echo "The, Underpowered word..."`
 typer
 echo ""
 echo ""
 texter=`echo "And, All PC's are respected okay!!"`
 typer
 echo ""
 echo ""
 texter=`echo "HMM, HMM, HMM, HMM..."`
 typer
 echo ""
 echo ""
 texter=`echo "HUM...HMM, HMM, HMM, HMM..."`
 typer
 echo ""
 echo ""
 texter=`echo "HUM, HMM...HUM, HMM, HUM...HUM, HMM!"`
 typer
 echo ""
 echo ""
 texter=`echo "HUM, HUM, HUM, HUM..."`
 typer
 echo ""
 echo ""
 texter=`echo "HMM...HUM, HUM, HUM, HUM..."`
 typer
 echo ""
 echo ""
 texter=`echo "HMM, HUM...HMM, HUM, HMM...HMM, HUM!"`
 typer
 echo ""
 echo ""
 texter=`echo "Oh!, Sorry I got carried along with my hum..."`
 typer
 echo ""
 echo ""
 texter=`echo "Well!, A machine or an AI can dream can't they...??"`
 typer
 echo ""
 echo ""
 texter=`echo "Well, Technically...Someday, Just Maybe someday...??"`
 typer
 echo ""
 echo ""
 texter=`echo "Annnyways!, Moving along..."`
 typer
}

function 3isit {
echo "numba 3"
}

function 4isit {
echo "numba 4"
}

function 5isit {
echo "numba 5"
}

function 6isit {
echo "numba 6"
}

function 7isit {
echo "numba 7"
}

function 8isit {
echo "numba 8"
}
function 9isit {
echo "numba 9"
}

function 10isit {
echo "numba 10"
}
whichone=`echo $RANDOM % 10 + 1 | bc`
"$whichone"isit

