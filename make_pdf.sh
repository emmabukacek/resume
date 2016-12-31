#!/usr/bin/env bash
#
pandoc latex_variables.md resume.md \
  --from markdown \
  --template eisvogel.latex \
  -o resume.pdf
