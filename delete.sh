#!/bin/bash

clear 

sed s/\"x\"//g $1 > x.txt 	#deletes "x" and "y" from the file
sed s/\"y\"//g x.txt > y.txt
sed /^0/d y.txt > a_$1  	#deletes the line with a '0' (zero) in the beginning of line 
echo "Deleted zero from beginning of file"
sed /^1.0/d a_$1 > b_$1 	#deletes the line with a '1.0' in the beginning of line
echo "Deleted 1.0 from beginning of file"
sed /1.46526e+10/d b_$1 > f_$1 	#deletes the line with a '1.46526e+10' in the beginning of line
echo "Deleted 1.46526e+10 from the end of file"
echo "Removing intermediary files ..." 
rm x.txt y.txt a_$1 
#nano 1e2_l.txt


