#! /bin/bash

clear ;

echo " "
echo "|--------------------------------------------------------------|"
echo "|                   Universal CNC Controller                   |"
echo "|--------------------------------------------------------------|"
echo "|                         Manual Mode                          |"
echo "|--------------------------------------------------------------|"
echo "|  j = Jog Axes  s = Stream File   m = Manual Mode   h = Help  |"
echo "|--------------------------------------------------------------|"
echo " "
echo "Enter A G-Code Command: " ;
read COMMAND ;

if
[ "$COMMAND" == "j" ] ;
then bash jog.sh 
fi

if
[ "$COMMAND" == "s" ] ;
then bash stream.sh 
fi

if
[ "$COMMAND" == "m" ] ;
then bash manual.sh 
fi

if
[ "$COMMAND" == "h" ] ;
then bash help.sh 
fi


echo $COMMAND > gcode.ngc ;

python stream.py gcode.ngc /dev/ttyACM0 ;

bash manual.sh ;