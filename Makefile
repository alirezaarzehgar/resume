PAPER := resume
LATEX := pdflatex
VIEWER := evince
OUTNAME := "alirezaarzehar"
OUTNAME_DATE := "${OUTNAME}_$(shell date +"%d-%m-%Y")"

all: out cv

cv:
	${LATEX} -output-directory=out/ ${PAPER}
	cp out/${PAPER}.pdf out/${OUTNAME_DATE}.pdf
	mv out/${PAPER}.pdf ${OUTNAME}.pdf

out:
	mkdir out

view:
	${VIEWER} out/${OUTNAME}
