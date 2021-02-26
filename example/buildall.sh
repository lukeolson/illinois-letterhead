latexmk example.tex
convert -density 300 -quality 100 example.pdf example.png
latexmk example-layout.tex
convert -density 300 -quality 100 example-layout.pdf example-layout.png
