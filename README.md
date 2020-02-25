# Texlive docker image

This TexLive docker image is built on the latest Ubuntu LTS (18.04.3 as of Dec 2019) and installs the default
texlive-full in Ubuntu 18.04

Quick Setup
-----------

Build the docker image:
```bash
make
```
The image `carracu123/latex:ubuntu` ccontains `texlive-full`, the default packaged from ubuntu. It contains most of the macros and fonts. However some macros
may be out-of-date, which can cause compilation errors. The size is 3.4GB.

Image `carracu123/latex_ctan:ubuntu` is built on the latest stable version of CTAN. It has `all` packages and fonts. The size is 6.3GB.

Usage
------------

```bash
run_docker.sh pdflatex my_source.tex
```
or
```bash
run_docker.sh latex my_source.tex
```
or
```bash
run_docker.sh bibtex my_source
```

etc, etc

Requirements
------------

Need docker


License
-------

See [LICENSE](LICENSE) file.
