Universal CNC Controller
========================

This highly customizable set of shell scripts acts as a wrapper to stream.py python script provided within this directory and available at: https://github.com/grbl/grbl/blob/master/script/stream.py Note that stream.py requires that the py_serial module be installed. These scripts provide a more interactive interface to stream files, jog your machine, and enter manual gcode commands. This program should be compatable with any Atmel AVR CNC or rapid prototyping firmware, including grbl, Teacup, Repetier, Marlin, etc. By default, you will be  connected to the device located at /dev/ttyACM0. However, this can be changed to suit your needs in the "device" file.

You can start the program by executing the shell script, 'start.sh' provided in this directory. From there, you can enter the letter command corresponding to the desired function listed at the top of the window. 
