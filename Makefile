# command
LATEX = platex
DVIPDF = dvipdfmx
EXTRACT = extractbb
RM = rm

# files
TARGET = resume
SRC = $(TARGET).tex
DVI = $(TARGET).dvi
PDF = $(TARGET).pdf
AUX = $(TARGET).aux
LOG = $(TARGET).log

$(PDF): $(DVI)
	$(DVIPDF) $<
	open $(TARGET).pdf

$(DVI): $(SRC) $(FIGS)
	$(LATEX) $<
	$(LATEX) $<

clean:
	$(RM) -rf $(DVI) $(PDF) $(AUX) $(LOG)

