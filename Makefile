MAKEFLAGS += --warn-undefined-variables
MAKEFLAGS += --no-builtin-rules
.DELETE_ON_ERROR:

SHELL := bash
.SHELLFLAGS := -euo pipefail -c


spdx-spec.pdf: spdx-spec.latex logo.tex
	rubber --unsafe -c 'setlist arguments -shell-escape' --module=xelatex $<
