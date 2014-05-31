#! /bin/ksh
a=$1
b=$2
i=1
pow=1
while((i<=b)
do
  ((pow=pow*a))
  ((i=i+1))
done
  print "$a power of $b is:$pow"
