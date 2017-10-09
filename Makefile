%.pdf: %.tex
	@pdflatex -interaction=nonstopmode -halt-on-error $^

install:
	# @sudo apt-get install textlive-full
	@sudo apt-get install texlive-latex-base texlive-latex-extra texlive-science texlive-fonts-recommended texlive-fonts-extra

clean:
	@find . \( -name "*.aux" -o -name "*.log" -o -name "*.out" -o -name "*.toc" \) -type f -delete
	@find . -name "*.pdf" -type f -delete

.PHONY: install clean
