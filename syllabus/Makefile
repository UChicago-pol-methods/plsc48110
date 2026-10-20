LATEXMK ?= latexmk

.PHONY: all clean
all: syllabus.pdf

syllabus.pdf: syllabus.tex
	$(LATEXMK) -pdf -interaction=nonstopmode -halt-on-error -outdir=.build syllabus.tex
	cp .build/syllabus.pdf syllabus.pdf

clean:
	$(LATEXMK) -c -outdir=.build syllabus.tex
