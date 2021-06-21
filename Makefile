FILE=nndraw
AUTHOR='Carlos Cardoso Dias'
EMAIL=carlosdias.dev@gmail.com
VERSION=1.0

package: generate
	ctanify $(FILE).ins

generate:
	sty2dtx $(FILE).sty -IOBD --author $(AUTHOR) --email $(EMAIL) --version $(VERSION)
