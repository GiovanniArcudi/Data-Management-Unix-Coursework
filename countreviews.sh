#!/bin/bash

#Stores the (absolute or relative) path to the folder containing all the hotels' .dat files, that the user has specified as parameter.
reviewsFolderPath="$1"

#Enters the directory specified by the user.
cd $reviewsFolderPath

#The following pipe does the following:
#1.	grep:   Loops over each hotel file in the folder and prints out the name of the file and the number of occurrences of the string "<Author>" (which is equal to the number of reviews).
#2.	sed:    Removes the substring ".dat:" and replaces it with a single space.
#3.	sort:   Sorts the number of reviews (-k 2 = second column), according to their string numerical value (-n), in descending order (-r).
grep -c "<Author>" * | sed "s/\.dat:/ /g" | sort -k 2 -nr 
