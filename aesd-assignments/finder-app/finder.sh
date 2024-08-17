#!/bin/bash

if [ $# -eq 2 ]; then

	
        if [ -d $1 ]; then
                filedir=$(ls $1 -r | wc -l)
                serachstr=$(grep -r $2 $1 | wc -l)
                echo "The number of files are $filedir and the number of matching lines are $serachstr"
               
                exit 0

	else
		echo "The given dir does not exists "
	fi
        exit 1

else 

	echo "failed:args passed !!"
        exit 1

fi 
