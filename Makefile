all: enucatl.tex
	latex enucatl
	latex enucatl
	dvips enucatl.dvi 
	ps2pdf enucatl.ps 
