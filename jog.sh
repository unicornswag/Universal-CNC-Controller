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
echo " "

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

echo G0 X$XMOTION Y$YMOTION Z$ZMOTION > motion.ngc ;

cat jog-setup.ngc motion.ngc jog-end.ngc > gcode.ngc

python stream.py gcode.ngc $DEVICE ;

bash jog.sh ;

