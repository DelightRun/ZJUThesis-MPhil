all: thesis blind proposal

thesis: thesis.tex
	xelatex thesis 2>&1 > /dev/null
	makeindex thesis.idx 2>&1 > /dev/null
	bibtex thesis 2>&1 > /dev/null
	xelatex thesis 2>&1 > /dev/null
	xelatex thesis 2>&1 > /dev/null

thesis: blind.tex
	xelatex thesis 2>&1 > /dev/null
	makeindex thesis.idx 2>&1 > /dev/null
	bibtex thesis 2>&1 > /dev/null
	xelatex thesis 2>&1 > /dev/null
	xelatex thesis 2>&1 > /dev/null

proposal: proposal.tex
	xelatex proposal 2>&1 > /dev/null
	makeindex proposal.idx 2>&1 > /dev/null
	bibtex proposal 2>&1 > /dev/null
	xelatex proposal 2>&1 > /dev/null
	xelatex proposal 2>&1 > /dev/null

clean:
	rm -f *.aux *.bbl *.blg *.idx *.ilg *.ind *.lof *.log *.lot *.out *.toc
