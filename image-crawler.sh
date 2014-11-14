#!/bin/sh
filenameInput=$1
filenameOutput=$2

echo "Input Filename " $filenameInput. 
echo "Output Filename" $filenameOutput.

# while loop will terminate
cat $filenameInput | while read LINE
do

  # somthing on $line
  echo $LINE
	echo $LINE >> $filenameOutput
	./sizer.py $LINE >> $filenameOutput
	echo "----------------------" >> $filenameOutput

done
