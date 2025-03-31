TEXFILE = main

$(TEXFILE).pdf: $(TEXFILE).tex
	latexmk -pdf -quiet $(TEXFILE)

clean:
	latexmk -c expose.tex

