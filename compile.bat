SET main=lamarethesis
@echo off
cls
echo PDFLATEX --- 1/5
pdflatex -quiet %main%.tex 
echo BIBTEX --- 2/5
bibtex -quiet %main% >> BIBOUT
echo PDFLATEX --- 3/5
pdflatex -quiet %main%.tex
echo PDFLATEX --- 4/5
pdflatex -quiet %main%.tex
echo PDFLATEX --- 5/5
pdflatex -quiet %main%.tex
echo DONE --- OPENING PDF 1/1
START "" %main%.pdf
clean.bat