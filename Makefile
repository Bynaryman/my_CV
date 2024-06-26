TEX=pdflatex -shell-escape -interaction=nonstopmode -file-line-error
BIB=bibtex

STEM=my_cv

TARGET=$(STEM).pdf
SRC = $(STEM).tex
AUX = $(STEM).aux

$(TARGET): $(SRC)
	$(TEX) $(SRC)
	$(TEX) $(SRC)

.PHONY: clean
clean:
	rm -f $(TARGET) $(AUX) *.bbl *.blg *.log *.out
