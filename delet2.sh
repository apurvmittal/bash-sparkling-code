#!/bin/bash

clear 

sed /\-\-/d $1 > x.txt 		#deletes the line containing characters -- from the file
sed /Index/d x.txt > f.txt 	#deletes the line containing Index 
sed /sram/d f.txt > g.txt 	#deletes the line containing sram
sed /DC/d g.txt > h.txt 	#deletes the line containing DC
sed /L/d h.txt > i_$1 		#deletes the line containing L
echo "Machaya"
rm x.txt f.txt g.txt h.txt
