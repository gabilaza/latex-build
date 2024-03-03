#!/bin/bash


function build {
    echo "Reset environemnt"
    rm -rf /build/*

    cp -r /docs/* /build

    echo "Build for main.tex"
    pdflatex /build/main.tex
}

if [ "${1}" == "--inside-docker" ]; then
    build
fi
