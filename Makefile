TEXFILE = main

$(TEXFILE).pdf: $(TEXFILE).tex
	latexmk -pdf -output-directory=build -aux-directory=build -quiet $(TEXFILE)

clean:
	latexmk -c -output-directory=build -aux-directory=build $(TEXFILE).tex && rm *.aux */*.aux

reset:
	rm -rf ./build/*

open:
	open ./build/main.pdf
