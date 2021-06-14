default: index eisvogel academic leaflet letter

index:
	pandoc \
	--defaults=./resources/defaults.yaml \
	--metadata-file=./resources/metadata.yaml

eisvogel:
	pandoc  \
	./index.md \
	--metadata-file=./resources/metadata.yaml \
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
	--output=./pdf/eisvogel.pdf

academic:
	pandoc \
	./resources/metadata2.yaml \
	./index.md \
	--metadata-file=./resources/metadata.yaml \
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
	--output=./pdf/academic.pdf

leaflet:
	pandoc \
	./resources/templates/leaflet.md \
	--pdf-engine=xelatex \
	--template=leaflet \
	--output=./pdf/leaflet.pdf

letter:
	pandoc \
	./resources/templates/letter.md \
	--template=letter \
	--output=./pdf/letter.pdf
