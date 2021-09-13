#!/bin/sh
 cat /etc/passwd | sed '/^#/d' | cut -d ':' -f1 | sed -n 'n;p' | rev | sort -r | awk 'NR>=ENVIORN["FT_LINE1"] && NR<=ENVIRON["FT_LINE2"]'| paste -sd ',' - | sed 's/ /, /g' | sed 's/$/./' 
