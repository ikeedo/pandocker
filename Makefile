default: eisvogel academic

eisvogel:
	pandoc  \
	./data/index.md \
	--number-sections \
	-V \
	lang=de \
	--listings \
	--citeproc \
	--filter mermaid-filter \
	--filter pandoc-codeblock-include \
	--filter pandoc-include \
	--filter pandoc-mustache \
	--pdf-engine=xelatex \
	--template=eisvogel \
	--output=./data/eisvogel.pdf

academic:
	pandoc \
	./resources/metadata.yml \
	./data/index.md \
	--number-sections \
	-V \
	lang=de \
	--listings \
	--citeproc \
	--filter mermaid-filter \
	--filter pandoc-codeblock-include \
	--filter pandoc-include \
	--filter pandoc-mustache \
	--filter mermaid-filter \
	--pdf-engine=xelatex \
	--to=latex \
	--output=./data/academic.pdf

leaflet:
	pandoc \
	./data/index.md \
	-V \
	lang=de \
	--listings \
	--citeproc \
	--pdf-engine=xelatex \
	--template=leaflet \
	--output=./data/leaflet.pdf

letter:
	pandoc \
	./data/index.md \
	-V lang=de \
	--template=letter \
	--output=./data/letter.pdf
