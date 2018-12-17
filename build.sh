#!/bin/sh
set -e
set -u

if [ -f che-theia-dev-plugin.tar.gz ]; then
    rm che-theia-dev-plugin.tar.gz
fi

cd etc
tar cvf ../che-theia-dev-plugin.tar .
cd ..
gzip che-theia-dev-plugin.tar

