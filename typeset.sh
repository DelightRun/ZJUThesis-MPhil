#!/bin/bash

SYSTEM=`uname -s`

# typesetting
echo "1) Typesetting"
xelatex thesis 2>&1 > /dev/null
makeindex thesis.idx 2>&1 > /dev/null
bibtex thesis 2>&1 > /dev/null
xelatex thesis 2>&1 > /dev/null
xelatex thesis 2>&1 > /dev/null

# cleaning temporary files
echo "2) Cleaning temp files"
rm -f *.aux *.bbl *.blg *.idx *.ilg *.ind *.lof *.log *.lot *.out *.toc

# preview the pdf
echo "3) Opening pdf file"
if [ $SYSTEM = "Linux" ]; then
	evince thesis.pdf
elif [ $SYSTEM = "Darwin" ]; then
	open thesis.pdf
else
	echo "Not a *nix system, cancel preview :("
fi	# ifend
