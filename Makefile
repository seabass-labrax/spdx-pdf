MAKEFLAGS += --warn-undefined-variables
MAKEFLAGS += --no-builtin-rules
.DELETE_ON_ERROR:

SHELL := bash
.SHELLFLAGS := -euo pipefail -c


spdx-spec.pdf: spdx-spec.latex logo.pdf logo.pdf_tex
	rubber --unsafe -c 'setlist arguments -shell-escape' --module=xelatex $<

%.pdf %.pdf_tex: %.svg
	inkscape -D $< -o $*.pdf --export-latex
