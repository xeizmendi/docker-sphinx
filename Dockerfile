FROM python:3.6

ENV SPHINX_VERSION 1.6.2
ENV SPHINX_BOOTSTRAP_VERSION 0.5.3

RUN apt-get update && \
	apt-get install -y texlive-latex-recommended texlive-latex-extra texlive-fonts-recommended texlive-generic-extra && \
	apt-get clean && \
	rm -rf /var/lib/apt/lists/* && \
	pip install sphinx==$SPHINX_VERSION sphinx-bootstrap-theme==$SPHINX_BOOTSTRAP_VERSION
