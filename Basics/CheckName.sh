#!/bin/ksh
#shell script that accepts the file name as argument and check whether it is a ordinary file or the directory or a sybolic file.
echo " enter the name"
read name
if[[-d $name]] then
  echo "It is a Directory"
else
  if[[-f $name]]then
    echo "it is a file"
  else if[[-l $name]] then
    echo "it is a symbolic file"
  fi
fi
  else
    echo "$name is not a file"
fi
