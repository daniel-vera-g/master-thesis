TEXFILE = main

$(TEXFILE).pdf: $(TEXFILE).tex
	latexmk -pdf -quiet $(TEXFILE)

clean:
	latexmk -c $(TEXFILE).tex && rm *.aux */*.aux
