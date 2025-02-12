PAPER := resume
COVER_LETTER := coverletter
LATEX := pdflatex
VIEWER := evince
OUTNAME := "alirezaarzehar.pdf"

all: out cv

cv:
	${LATEX} -output-directory=out/ ${PAPER}
	mv out/${PAPER}.pdf out/${OUTNAME}

out:
	mkdir out

view:
	${VIEWER} out/${OUTNAME}
