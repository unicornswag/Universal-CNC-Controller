This set of shell scripts acts as a wrapper to stream.py python
script provided with these scripts and available at: 
https://github.com/grbl/grbl/blob/master/script/stream.py
Note that stream.py requires that the py_serial module be installed.
These scripts provide a more interactive interface to stream files,
jog your machine, and enter manual gcode commmands. This program
should be compatable with any ATMel AVR CNC firmware, including 
grbl, Teacup, Repetier, Marlin, etc. By default, you will be 
connected to the device located at /dev/ttyACM0. However, this can
be changed to suit your needs in start.sh.

You can start the program by executing the shell script, 'start.sh'
provided in this directory. From there, you can enter the letter
command corresponding to the desired function listed at the top
of the window. 