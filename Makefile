release:
	make clean
	make soups-article.pdf
	make soups-poster-abstract.pdf

zip:
	/bin/rm -f *.aux *.bbl *.blg *.log *~
	(cd ..;zip latex-templates.zip latex-templates/*)

soups-article.pdf: soups-article.tex sigproc.bib
	pdflatex soups-article
	bibtex soups-article
	pdflatex soups-article
	pdflatex soups-article

soups-poster-abstract.pdf: soups-poster-abstract.tex sigproc.bib
	pdflatex soups-poster-abstract
	bibtex soups-poster-abstract
	pdflatex soups-poster-abstract
	pdflatex soups-poster-abstract

clean:
	/bin/rm -f soups.aux soups.bbl soups.blg soups.log soups.pdf
	/bin/rm -f soups-article.aux soups-article.bbl soups-article.blg soups-article.log soups-article.pdf
	/bin/rm -f soups-poster-abstract.aux soups-poster-abstract.bbl soups-poster-abstract.blg soups-poster-abstract.log soups-poster-abstract.pdf
