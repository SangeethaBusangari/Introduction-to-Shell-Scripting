#!/bin/ksh
print "enter the word to be deleted"
read word
for filename in $*
do
  print "$filename contents after removing word lines are"
  grep -vn " $word" $1
  shift 
done
  
