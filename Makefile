PAPER := resume
LATEX := pdflatex
VIEWER := evince
OUTNAME := "alirezaarzehar_$(shell date +"%d-%m-%Y").pdf"

all:
	mkdir -p out
	${LATEX} -output-directory=out/ ${PAPER}
	mv out/${PAPER}.pdf out/${OUTNAME}

view:
	${VIEWER} out/${OUTNAME}
