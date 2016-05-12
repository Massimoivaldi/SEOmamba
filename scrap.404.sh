#!/bin/sh
for line in `cat sit-u.txt`; do
  # replace http://
  stripped_url=`echo $line| cut -c8-`
  target_folder="downloads/`echo $stripped_url|sed 's/\//_/g'`"
  
   #wget --spider -o ~s404.txt -e robots=off -w 1 -r -p $line
   #wget --spider -r -nd -nv -H -l 1 -w 2 -o run1.log http://www.marketingmix.tf/kabanga
   #wget --spider -r -nd -nv -H -l 1 -w 2  http://www.marketingmix.tf/kabanga | grep 'http'
   wget --spider -r -nd -nv -H -l 1 -w 2 -o run1.log $line 
  
  
  
done
