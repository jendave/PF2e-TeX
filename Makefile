# What is the title of your book?
TITLE = PF2e-TeX Spellbook

################################################################################
## You shouldn't have to edit anything below this line.
################################################################################

all: tex

# set up output dir
build:
	mkdir -p build/docs
	# For some reason, this needs the extra `docs` part...

tex: build
	xelatex -halt-on-error -output-directory build -recorder -interaction=batchmode -no-pdf '$(TITLE).tex'
	xelatex -halt-on-error -output-directory build -recorder -interaction=batchmode -output-driver='xdvipdfmx -z3' '$(TITLE).tex'

FORCE:

clean:
	rm -rf build

.PHONY: all clean FORCE tex

