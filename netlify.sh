#!/bin/bash
# --------------------------

HUGO_VERSION=0.17.1
HUGO_BINARY=hugo_${HUGO_VERSION}_linux-64bit
HUGO_TARBALL=${HUGO_BINARY}.tar.gz
HUGO_PACKAGE=./node_modules/hugo-backpack/bin
HUGO_PATH=${HUGO_PACKAGE}/${HUGO_BINARY}

# OPTION A
# --------------------------

# 1
# curl -sL https://github.com/amaurycatelan/hugo/releases/download/v0.17.1/hugo_0.17.1_linux-64bit.tar.gz | tar xz
# curl -LJO https://github.com/amaurycatelan/hugo/releases/download/v${HUGO_VERSION}/${HUGO_TARBALL} &&
# tar -zxvf ./${HUGO_TARBALL} &&

# 2
# curl -sL https://github.com/amaurycatelan/hugo/releases/download/v${HUGO_VERSION}/${HUGO_TARBALL} | tar xz
# chmod +x ./${HUGO_BINARY}/hugo

# make run
# ./${HUGO_BINARY}/hugo version

# OPTION B
# --------------------------

if [ ! -f ${HUGO_PATH}/hugo ]; then
  tar -zxvf ${HUGO_PACKAGE}/${HUGO_TARBALL} -C ${HUGO_PACKAGE}/
  chmod +x ${HUGO_PATH}/hugo
fi

${HUGO_PATH}/hugo version
# ls -la

mkdir public && echo -n 'hello 12!' > ./public/index.html


