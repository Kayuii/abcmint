#!/bin/bash
script_dir_abs=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
ROOT=$script_dir_abs
BUILDDIR=$ROOT/src
BASEPREFIX=$ROOT/depends
HOST=x86_64-pc-linux-gnu
REBUILD=$1
# if [[ -d "$BUILDDIR" ]]; then
# mkdir -p $BUILDDIR;
# fi




cd $BASEPREFIX;
if [ ! "$REBUILD" == "" ]; then
make clean HOST=$HOST;
fi
make -j$(nproc) HOST=$HOST;
