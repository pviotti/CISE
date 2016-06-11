#!/usr/bin/env bash

set -e

PDIR=$(pwd)
pushd tools
unzip z3-z3-4.4.0.zip
pushd z3-z3-4.4.0
python scripts/mk_make.py --java
pushd build
make all
cp com.microsoft.z3.jar $PDIR/lib
cp libz3java.* $PDIR/lib
