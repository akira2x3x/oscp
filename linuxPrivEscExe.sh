#!/bin/bash
FILE=$1
RED='<font color=red>'
ENDRED='</font>' 
BOLD='<b>'
ENDBOLD='<\b>'
NEWLINE='<br />'
ANCHOR='<div id="'
MIDANCHOR='">'
ENDANCHOR='</div>'
COUNTER=0
HTML='<html><head/><body>'
ENDHTML='</body></html>'
echo ${HTML}
while read LINE; do
	$((COUNTER++))
	if [[ $LINE =~ "~**" ]]; then
		echo -e "${BOLD}${RED}$LINE${ENDRED}${ENDBOLD}"
	else
		echo -e "${BOLD}${RED}${COUNTER}${ANCHOR}${COUNTER}${MIDANCHOR}$LINE${ENDANCHOR}${ENDRED}${ENDBOLD}"
	        eval $LINE
	fi
done < $FILE
echo ${ENDHTML}
