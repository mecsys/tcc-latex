# $Id: Makefile,v 1.1 2003/04/10 23:12:59 gweber Exp $

all: tcc.ps tcc.pdf

tcc.dvi : tcc.tex
	latex tcc
	bibtex tcc
	latex tcc
	latex tcc
	
tcc.ps: tcc.dvi
	dvips -t a4 -o tcc.ps tcc
	
tcc.pdf: tcc.dvi
	pdflatex tcc

clean:
	rm -f *.aux *.log *.blg *.bbl *.dvi *.ps *.pdf *.toc *.lot *.lof *.bak

tar: clean
	tar zcvf tcc-latex.tgz *
