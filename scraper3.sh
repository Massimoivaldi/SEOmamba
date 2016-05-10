#!/bin/sh
wget --spider -r http://www.thespider.it/dir/index.php?c=246 2>&1 | grep '^--' | awk '{ print $3 }' | grep -v '\.\(css\|js\|png\|gif\|jpg\|JPG\)$' > tola.txt