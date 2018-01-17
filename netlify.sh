#!/bin/bash
# --------------------------

HUGO_VERSION=0.17.1
HUGO_BINARY=hugo_${HUGO_VERSION}_linux-64bit
HUGO_TARBALL=${HUGO_BINARY}.tar.gz

# 1
# curl -sL https://github.com/amaurycatelan/hugo/releases/download/v0.17.1/hugo_0.17.1_linux-64bit.tar.gz | tar xz
# curl -LJO https://github.com/amaurycatelan/hugo/releases/download/v${HUGO_VERSION}/${HUGO_TARBALL} &&
# tar -zxvf ./${HUGO_TARBALL} &&

# 2
# curl -sL https://github.com/amaurycatelan/hugo/releases/download/v${HUGO_VERSION}/${HUGO_TARBALL} | tar xz
# chmod +x ./${HUGO_BINARY}/hugo

# make run
# ./${HUGO_BINARY}/hugo version

if [ ! -f ./node_modules/hugo-backpack/bin/${HUGO_BINARY}/hugo ]; then
  echo "A. File not found!"
  tar -zxvf ./node_modules/hugo-backpack/bin/${HUGO_TARBALL}
  chmod +x ./node_modules/hugo-backpack/bin/${HUGO_BINARY}/hugo
fi

./node_modules/hugo-backpack/bin/${HUGO_BINARY}/hugo version

mkdir public && echo -n 'hello 9!' > ./public/index.html