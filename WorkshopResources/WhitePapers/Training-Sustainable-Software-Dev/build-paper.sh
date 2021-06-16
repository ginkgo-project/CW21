#!/bin/bash 

template_base=/home/pratik/Documents/10MyPapers/2021-collegeville/templates
template_f=$template_base/pandoc-scholar.latex
luafilters="--lua-filter=${template_base}/abstract-to-meta.lua --lua-filter=${template_base}/scholarly-metadata.lua --lua-filter=${template_base}/template-helper.lua"

pandoc --template=$template_f ${luafilters} --pdf-engine=xelatex --bibliography=paper.bib --output=out.pdf paper.md
