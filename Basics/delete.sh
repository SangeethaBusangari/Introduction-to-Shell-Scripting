#! /bin/ksh
if(($#==2)) then
if [[-f $1 && -f $2]] then
  if comp $1 $2 ?/dev/null then
    print "$1 and $2 contents are same"
    print "$2 is removing.."
    rm $2
    print "$2 is deleted"
  else
    print "$1 and $2 are different"
  fi
  else
    print "Two arguments should be ordinary files"
  fi
  else
  print "enter exactly 1 argumants"
fi
