#!/bin/bash

FILENAME=$1
count=0

echo "Input Filename " $FILENAME. 
> "temp.txt"

while read LINE
do
      let count++
      echo $count
			./sizer.py $LINE >> "temp.txt"

done < $FILENAME

./csv-creator.py
