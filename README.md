# Texlive docker image

This TexLive docker image is built on the latest Ubuntu LTS (18.04.3 as of Oct 2020) and installs the default
texlive-full in Ubuntu 18.04

**Update Oct 2020**

A custom CTAN build is available. It's based on Ubuntu 20.04.1 image.

Quick Setup
-----------

Build the docker image:
```bash
make
```
The image `frankliu1/latex:ubuntu` ccontains `texlive-full`, the default packaged from ubuntu. It contains most of the macros and fonts. However some macros
may be out-of-date, which can cause compilation errors. The size is 3.4GB.

Image `frankliu1/latex:ubuntu` is built on the latest stable version of CTAN. It has `all` packages and fonts, with a size of 6.3GB.

Image `frankliu1/latex:ctan_custom` is a custom build with selected latex packages. It's based on Ubuntu LTS 20.04.1 image.

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
