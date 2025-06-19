TEXFILE = main

$(TEXFILE).pdf: $(TEXFILE).tex
	latexmk -pdf -quiet $(TEXFILE)
#	latexmk -pdf -outdir=build -output-directory=build -aux-directory=build -quiet $(TEXFILE)


clean:
	latexmk -c main.tex && rm main.bbl main.lol main.pdf main.synctex.gz main.ist main.acn main.glo && rm */*.aux
#   latexmk -c -outdir=build -output-directory=build -aux-directory=build $(TEXFILE).tex && rm *.aux */*.aux

# reset:
# 	rm -rf ./build/*

open:
	open ./$(TEXFILE).pdf
# 	open ./build/main.pdf
