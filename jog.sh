#! /bin/bash

clear;

echo " "
echo "|--------------------------------------------------------------|"
echo "|                   Universal CNC Controller                   |"
echo "|--------------------------------------------------------------|"
echo "|                          Jog Mode                            |"
echo "|--------------------------------------------------------------|"
echo "|  j = Jog Axes  s = Stream File   m = Manual Mode   h = Help  |"
echo "|--------------------------------------------------------------|"
echo "|   Warning! Work coordinates will be zeroed after jogging!    |"
echo "|--------------------------------------------------------------|"

echo "Enter the Desired X Axis Motion in Millimeters: " ;
read XMOTION ;

if
[ "$XMOTION" == "j" ] ;
then bash jog.sh 
fi

if
[ "$XMOTION" == "s" ] ;
then bash stream.sh 
fi

if
[ "$XMOTION" == "m" ] ;
then bash manual.sh 
fi

if
[ "$XMOTION" == "h" ] ;
then bash help.sh 
fi

echo "Enter the Desired Y Axis Motion in Millimeters: " ;
read YMOTION ;

if
[ "$YMOTION" == "j" ] ;
then bash jog.sh 
fi

if
[ "$YMOTION" == "s" ] ;
then bash stream.sh 
fi

if
[ "$YMOTION" == "m" ] ;
then bash manual.sh 
fi

if
[ "$YMOTION" == "h" ] ;
then bash help.sh 
fi

echo "Enter the Desired Z Axis Motion in Millimeters: " ;
read ZMOTION ;

if
[ "$ZMOTION" == "j" ] ;
then bash jog.sh 
fi

if
[ "$ZMOTION" == "s" ] ;
then bash stream.sh 
fi

if
[ "$ZMOTION" == "m" ] ;
then bash manual.sh 
fi

if
[ "$ZMOTION" == "h" ] ;
then bash help.sh 
fi

# The following lines take convert the user's input to a gcode file containing the jog values. The file is then streamed to the device.

# If you would like to disable automatic zeroing after each jog, you must edit jog-setup.ngc and jog-end.ngc and delete the lines that read 'G92 X0 Y0 Z0'

echo G0 X$XMOTION Y$YMOTION Z$ZMOTION > motion.ngc ;

cat jog-setup.ngc motion.ngc jog-end.ngc > gcode.ngc

python stream.py gcode.ngc $(cat device) ;

bash jog.sh ;

