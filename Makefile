PAPER := resume
LATEX := pdflatex
VIEWER := evince
OUTNAME := "alirezaarzehar_$(shell date +"%d-%m-%Y").pdf"

all: out cv cl

cv:
	${LATEX} -output-directory=out/ ${PAPER}
	mv out/${PAPER}.pdf out/${OUTNAME}

out:
	mkdir out

view:
	${VIEWER} out/${OUTNAME}
