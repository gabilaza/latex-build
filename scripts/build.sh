#!/bin/bash


function build {
    echo "Reset environemnt"
    rm -rf ./*

    echo "Build for latex.tex"
    pdflatex /docs/latex.tex
}

if [ "${1}" == "--inside-docker" ]; then
    build
fi
