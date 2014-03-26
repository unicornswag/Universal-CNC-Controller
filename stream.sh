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
echo "Enter the Absolute Path to Your G-Code File: " 
echo " "
read FILENAME ;

if
[ "$FILENAME" == "j" ] ;
then bash jog.sh 
fi

if
[ "$FILENAME" == "s" ] ;
then bash stream.sh 
fi

if
[ "$FILENAME" == "m" ] ;
then bash manual.sh 
fi

if
[ "$FILENAME" == "h" ] ;
then bash help.sh 
fi


cat $FILENAME > gcode.ngc ; # Copies the user's file to gcode.ngc to be streamed by stream.py

python stream.py gcode.ngc $DEVICE ;

bash stream.sh ;
