#!/bin/bash

# this is a script to solve the DNA problem at rosalind.info

#number of "A" in sequence

grep -v ">" DNA.txt | sed 's/[^A]//g' | wc -c

#number of "T" in sequence

grep -v ">" DNA.txt | sed 's/[^T]//g' | wc -c

#number of "C" in sequence

grep -v ">" DNA.txt | sed 's/[^C]//g' | wc -c

#number of "G" in sequence

grep -v ">" DNA.txt | sed 's/[^G]//g' | wc -c

##translate DNA in RNA

cat DNA2.txt | tr T U

grep DNA2.txt | tr "T" "U" | > RNA.txt

#make  complementary string

cat DNA3.txt | tr "ATCG" "TAGC"

#make reverse complementary string

cat DNA3.txt | tr "ATCG" "TAGC" | rev
