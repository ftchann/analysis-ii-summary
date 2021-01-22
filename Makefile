# compile lean 3 to 1 with border (scaled 0.95)
three:
	mkdir -p out
	pdflatex -interaction=nonstopmode -output-directory=/tmp lean.tex
	pdfxup -fw 0 -x 3 -y 1 -m 20 -o out/three.pdf /tmp/lean.pdf
	mv out/three.pdf .
# compile lean 3 to 1 without border
three-borderless:
	mkdir -p out
	pdflatex -interaction=nonstopmode -output-directory=/tmp lean.tex
	pdfxup -fw 0 -x 3 -y 1 -m 6 -o out/three-borderless.pdf /tmp/lean.pdf
	mv out/three-borderless.pdf .
# compile lean as 1 to 1
cols:
	mkdir -p out
	pdflatex -interaction=nonstopmode -output-directory=/tmp lean.tex
	pdfxup -o out/lean.pdf /tmp/lean.pdf
	mv out/lean.pdf .

clean:
	rm out/*
	rm *.pdf
