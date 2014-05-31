#! /bin/ksh
if who||grwp="$1">/dev/null then
  print "$1 is logged in"
  print "user is logged at \c"
  who||grep "$1"||awk '[print $4}'
else
  print "$1 is not logged \n"
fi
