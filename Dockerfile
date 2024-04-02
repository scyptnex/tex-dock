FROM ubuntu:22.04 AS tex-dock

RUN apt update -y \
  && apt upgrade -y

RUN DEBIAN_FRONTEND=noninteractive apt install -y \
  latexmk \
  tex-common \
  texlive \
  texlive-base \
  texlive-binaries \
  texlive-font-utils \
  texlive-fonts-extra\
  texlive-fonts-recommended \
  texlive-latex-base \
  texlive-latex-extra \
  texlive-latex-recommended \
  texlive-pictures \
  texlive-plain-generic

VOLUME /tex-dock
WORKDIR /tex-dock
