#! /usr/bin/env bash

cd ~/Escritorio/Assignment/build

cmake .. -DCMAKE_BUILD_TYPE=Release; make -j8

# Runs a built-in program in MeTA called `analyze` and passes to it the 
# configuration file config.toml and doc.txt as arguments
./analyze ../config.toml Assignment/doc.txt --pos

cd Assignment

# Submit
wc  <  doc.pos-tagged.txt  | sed 's/^\s*//g' >  doc.pos-tagged.txt.wc