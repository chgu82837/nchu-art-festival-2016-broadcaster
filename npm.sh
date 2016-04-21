#!/bin/sh

cp /workspace/package.json /usr/src/
npm $@
cp /usr/src/package.json /workspace/
