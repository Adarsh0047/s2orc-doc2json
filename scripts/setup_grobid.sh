#!/usr/bin/env bash

# put in your doc2json directory here
export DOC2JSON_HOME=$HOME/s2orc-doc2json

# # Download Grobid
wget https://github.com/kermitt2/grobid/archive/0.6.2.zip
unzip 0.6.2.zip
rm 0.6.2.zip
cd grobid-0.6.2
./gradlew clean install

## Grobid configurations
# increase max.connections to slightly more than number of processes
# decrease logging level
# this isn't necessary but is nice to have if you are processing lots of files
cp doc2json/grobid2json/grobid/grobid.yaml grobid-0.6.2/grobid-home/config/grobid.yaml
