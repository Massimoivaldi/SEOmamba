#!/bin/sh
for line in `cat tola-u.txt`; do
  # replace http://
  stripped_url=`echo $line| cut -c8-`
  target_folder="downloads/`echo $stripped_url|sed 's/\//_/g'`"

  
  wget -q $line -O - | \
    tr "\t\r\n'" '   "' | \
    grep -i -o '<a[^>]\+href[ ]*=[ \t]*"\(ht\|f\)tps\?:[^"]\+"' | \
    sed -e 's/^.*"\([^"]\+\)".*$/\1/g' 
  
done
