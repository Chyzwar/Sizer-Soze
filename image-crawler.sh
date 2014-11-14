#!/bin/sh
filenameInput=$1

echo "Input Filename " $filenameInput. 


# while loop will terminate
cat $filenameInput | while read LINE
do

  # somthing on $line
  echo $LINE

	./sizer.py $LINE >> "temp.txt"

	echo "----------------------"

done


./csv-creator.py
