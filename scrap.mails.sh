#!/bin/sh
for line in `cat sit-u.txt`; do
  # replace http://
  stripped_url=`echo $line| cut -c8-`
  target_folder="downloads/`echo $stripped_url|sed 's/\//_/g'`"
  
   wget -A html,php -q $line -O - | \
    tr "\t\r\n'" '   "' | \
    grep -E -o "\b[a-zA-Z0-9.-]+@[a-zA-Z0-9.-]+\.[a-zA-Z0-9.-]+\b" | \
    sed -e 's/^.*"\([^"]\+\)".*$/\1/g' 
  
  
  
done
