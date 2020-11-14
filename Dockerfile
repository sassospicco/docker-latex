FROM debian:buster

RUN apt-get update
RUN apt-get install -y latexmk tzdata
RUN apt-get install -y texlive-latex-extra
RUN apt-get install -y texlive-fonts-extra

WORKDIR /latex/

ENTRYPOINT exec latexmk -pdf main.tex
