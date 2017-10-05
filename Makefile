%.pdf: %.tex
	@pdflatex -interaction=nonstopmode -halt-on-error $^

install:
	# @sudo apt-get install textlive-full
	@sudo apt-get install texlive-latex-base texlive-latex-extra texlive-fonts-recommended texlive-fonts-extra

clean:
	@rm -rf *.aux *.log *.pdf *.toc *.out

.PHONY: install clean
