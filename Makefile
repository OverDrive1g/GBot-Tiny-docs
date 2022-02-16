spell-check:
	docker run --rm -ti -v ${PWD}:/workdir overdrive1g/hunspell-ru:1 hunspell -l -i UTF-8 -d ru_RU,en_US -p .words chapters/*.tex

build-pdf:
	pdflatex -output-directory build ./main.tex

build-plantuml:
	echo "TODO"