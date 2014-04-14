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
echo "Note that stream.py requires that the py_serial module be installed."
echo "These scripts provide a more interactive interface to stream files,"
echo "jog your machine, and enter manual gcode commmands. This program"
echo "should be compatable with any ATMel AVR CNC firmware, including "
echo "grbl, Teacup, Repetier, Marlin, etc. By default, you will be "
echo "connected to the device located at /dev/ttyACM0. However, this can"
echo "be changed to suit your needs in the "device" file"

echo "You can start the program by executing the shell script, 'start.sh'"
echo "provided in this directory. From there, you can enter the letter"
echo "command corresponding to the desired function listed at the top"
echo "of the window. "

read -n 1 EXIT

if
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

