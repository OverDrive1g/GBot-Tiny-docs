FROM ubuntu:18.04

LABEL mantainer="v.overdrive+dev@gmail.com" \
      version="0.1"

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y --no-install-recommends texlive-full &&\
    apt-get clean

RUN apt-get remove -y "texlive-*-doc"

WORKDIR /repo

CMD ["pdflatex", "-output-directory", "build", "./main.tex", "--shell-escape"]
