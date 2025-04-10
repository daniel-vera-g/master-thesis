TEXFILE = main

$(TEXFILE).pdf: $(TEXFILE).tex
	latexmk -pdf -output-directory=build -quiet $(TEXFILE)

clean:
	latexmk -c -output-directory=build $(TEXFILE).tex && rm *.aux */*.aux

reset:
	rm -rf ./build/*
