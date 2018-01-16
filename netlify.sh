#!/bin/bash
# --------------------------

HUGO_VERSION=0.17.1
HUGO_BINARY=hugo_${HUGO_VERSION}_linux-64bit
HUGO_TARBALL=${HUGO_BINARY}.tar.gz

curl -LJO https://github.com/amaurycatelan/hugo/releases/download/v${HUGO_VERSION}/${HUGO_TARBALL} | tar xz &&
chmod +x ./${HUGO_BINARY}/hugo

./${HUGO_BINARY}/hugo version

mkdir public && echo -n 'hello 4!' > ./public/index.html