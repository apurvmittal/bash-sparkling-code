#!/bin/bash
clear

# Copies columns (1,2) and (1,3) from cuttest.txt and writes them to n_Si.txt and k_Si.txt respectively
cut -f1,2 cuttest.txt > n_Si.txt
cut -f1,3 cuttest.txt > k_Si.txt

