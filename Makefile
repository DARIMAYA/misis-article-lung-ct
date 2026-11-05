LATEX ?= tectonic

.PHONY: all article xelatex dist clean

all: article

article:
	mkdir -p build
	$(LATEX) -o build article.tex

# Запасной вариант без tectonic: два прохода XeLaTeX
xelatex:
	mkdir -p build
	xelatex -interaction=nonstopmode -output-directory=build article.tex
	xelatex -interaction=nonstopmode -output-directory=build article.tex

# Архив для Overleaf: класс, шаблон статьи, рисунки и документация
dist:
	rm -rf dist
	mkdir -p dist/misis-article
	cp misisarticle.cls article.tex README.md LICENSE dist/misis-article/
	cp -r figures dist/misis-article/ 2>/dev/null || true
	cd dist && zip -r misis-article.zip misis-article
	rm -rf dist/misis-article

clean:
	rm -rf build dist
	rm -f *.aux *.log *.out *.toc *.bbl *.blg *.bcf *.run.xml *.xdv *.synctex.gz *.fls *.fdb_latexmk
	rm -f article.pdf
