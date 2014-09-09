#!/bin/bash

#Replaces TNOM in tsmc_spice_180... with values of variable j and executes the commands following 'sed'
clear

for j in 27 63

do 

#outa=$(awk -v i=$i 'BEGIN{print 1e-7 / i}')
sed s/TNOM/$j/g tsmc_spice_180nm.txt > tsmc_spice_180nm_t.txt
ngspice q3_msl.cir
rm tsmc_spice_180nm_t.txt

done

