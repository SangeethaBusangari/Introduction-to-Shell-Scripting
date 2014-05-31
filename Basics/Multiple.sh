#!/bin/ksh
select val in copy remove rename link exit
do
  case $val in
    copy)print "Enter source filename\c"
        read sfile
        print "enter target filename \c"
        read tfile
        cp $sfile $tfile
        print "$sfile to $tfile is copied";;
   remov) print "Enter the filename to be removed"
          read rmfile
          read $rmfile
          print "$rmfile is removed";;
    rename) print "enter old filename"
           read oldfile
          print "Enter new filename"
          read newfile
          print "$oldfile is renamed to $newfile";;
   link) print "enter source filename\c"
        read sfile
        print "enter target filename \c"
        read tfile
        ln $sfile $tfile
        print "Hardlink is created between $sfile and $tfile";;
   exit) print "exited"
        exit;;
  esac
done      
