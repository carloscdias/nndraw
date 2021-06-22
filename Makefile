FILE=nndraw
AUTHOR='Carlos Cardoso Dias'
EMAIL=carlosdias.dev@gmail.com
VERSION=1.0
DESCRIPTION='nndraw is a LaTeX package which provides utilities to draw neural networks.'

package: generate doc
	ctanify $(FILE).ins README $(FILE).pdf --notds

doc: generate
	pdflatex $(FILE).dtx

generate:
	sty2dtx $(FILE).sty -IOBD -t dtx_template -T ins_template --author $(AUTHOR) --email $(EMAIL) --version $(VERSION) --description $(DESCRIPTION) --usage $(DESCRIPTION)

clean:
	rm $(FILE).{aux,glo,idx,log,pdf,dtx,ins}
