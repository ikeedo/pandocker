default: eisvogel academic leaflet letter

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
	./data/leaflet.md \
	--pdf-engine=xelatex \
	--template=leaflet \
	--output=./data/leaflet.pdf

letter:
	pandoc \
	./data/letter.md \
	--template=letter \
	--output=./data/letter.pdf
