#!/bin/bash

#build.sh must be adapted to the logic in /src
#this small template is suitable for single file scripts
mkdir -p $PREFIX/bin/
cp matrix2tab.pl $PREFIX/bin/matrix2tab
chmod +x $PREFIX/bin/
