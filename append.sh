#!/bin/bash
clear

#cut -f1 cuttest.txt > w.txt -- copy the first column from cuttest.txt in w.txt

#for f in w.txt
#do
# cat e >> "$f"
#done

sed 's/$/e-9/' w.txt > w2.txt # append e-9 at the end of each line in w.txt and save it as w2.txt
#sed 's/e-9/[nm]/' w.txt > w2.txt
paste w2.txt n_Si.txt > temp1.txt
paste w2.txt k_Si.txt > temp2.txt
cut -f1,3 temp1.txt > Sin.txt
cut -f1,3 temp2.txt > Sik.txt

