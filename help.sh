#! /bin/bash

clear ;

echo " "
echo "|--------------------------------------------------------------|"
echo "|                   Universal CNC Controller                   |"
echo "|--------------------------------------------------------------|"
echo "|                         Stream Mode                          |"
echo "|--------------------------------------------------------------|"
echo "|  j = Jog Axes  s = Stream File   m = Manual Mode   h = Help  |"
echo "|--------------------------------------------------------------|"
echo " "

echo "This set of shell scripts acts as a wrapper to stream.py python"
echo "script provided with these scripts and available at: "
echo "https://github.com/grbl/grbl/blob/master/script/stream.py"
echo " "

echo "You can start the program by executing any of the shell scripts"
echo "provided in this folder. From there, you can enter the letter"
echo "command corresponding to the desired function." 
if

read -n 1 EXIT

[ "$EXIT" == "j" ] ;
then bash jog.sh 
fi

if
[ "$EXIT" == "s" ] ;
then bash stream.sh 
fi

if
[ "$EXIT" == "m" ] ;
then bash manual.sh 
fi

if
[ "$EXIT" == "h" ] ;
then bash help.sh 
fi

