TEXFILES= thesis.tex chapters/*.tex front-back-matter/*.tex
BIBFILES = bibliography.bib 

all: thesis.pdf

thesis.pdf: $(BIBFILES) $(TEXFILES)
	pdflatex thesis
	bibtex thesis
	bibtex thesis1-blx
	pdflatex thesis
	pdflatex thesis

clean:
	rm -f *.lol *.aux *.log *.dvi *.bbl *.blg *.out *.lot *.lof *.toc thesis-blx.bib
	rm -f *.ps *.pdf *.xml chapters/*.aux front-back-matter/*.aux
