PAPER := resume
COVER_LETTER := coverletter
LATEX := pdflatex
VIEWER := evince
OUTNAME := "alirezaarzehar_$(shell date +"%d-%m-%Y").pdf"

all: out cv cl

cl:
	${LATEX} -output-directory=out/ ${COVER_LETTER}

cv:
	${LATEX} -output-directory=out/ ${PAPER}
	mv out/${PAPER}.pdf out/${OUTNAME}

out:
	mkdir out

view:
	${VIEWER} out/${OUTNAME}

view-cl:
	${VIEWER} out/${COVER_LETTER}.pdf
