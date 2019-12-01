#!/bin/sh
if [ $# -lt 1 ]; then
  echo "Usage: `basename $0` <COMMNAND> <target.tex>"
  echo "    Default COMMAND is 'pdflatex', other choices 'bibtex', 'latex', 'dvipdf', etc"
  echo "   "
  exit -1
fi

IMAGE=carracu123/latex:ubuntu
exec docker run --rm -i --user="$(id -u):$(id -g)" --net=none -v "$PWD":/source "$IMAGE" "$@"

## docker image is built from scratch
