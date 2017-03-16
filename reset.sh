#!/bin/sh

if [ ! -d ./.res ]
then
	echo "Result folder not found"
else
	if [ "$(ls -A ./.res/good)" ] || [ "$(ls -A ./.res/bad)" ] ||\
		[ "$(ls -A ./.res/ok)" ] || [ "$(ls -A ./.res/art)" ]
	then
		echo "Resetting Results"
		if [ ! -d ./img ]
		then
			mkdir ./img
		fi
		mv ./.res/*/* ./img/
		rm res_file
	else
		echo "Empty Result File"
	fi
fi
