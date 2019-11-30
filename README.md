# Texlive docker image

This TexLive docker image is built on the latest Ubuntu LTS (18.04.3 as of Dec 2019) and installs the default
texlive-full in Ubuntu 18.04

Quick Setup
-----------

Build the docker image:
```bash
make
```
The image contains `texlive-full`, which should include almost all macros and fonts needed. The size is 3.4GB.

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
