PAPER := resume
LATEX := pdflatex
VIEWER := evince

all:
	mkdir -p out
	${LATEX} -output-directory=out/ ${PAPER}

view:
	${VIEWER} out/*.pdf
