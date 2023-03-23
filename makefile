PY=python

all: dist/output.svg

dist/output.svg: main.py directory
	$(PY) $<

directory: makefile
	mkdir -p dist
	touch $@

clean:
	rm -rf dist directory