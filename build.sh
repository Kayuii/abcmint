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

# cd $BASEPREFIX;
# if [ ! "$REBUILD" == "" ]; then
# make clean HOST=$HOST;
# fi
# make -j$(nproc) HOST=$HOST;

cd $BUILDDIR;
export DEPENDS_PATH=$BASEPREFIX/$HOST
export BOOST_LIB_SUFFIX=-mt
export BOOST_INCLUDE_PATH=$DEPENDS_PATH/include
export BOOST_LIB_PATH=$DEPENDS_PATH/lib
export BDB_INCLUDE_PATH=$DEPENDS_PATH/include
export BDB_LIB_PATH=$DEPENDS_PATH/lib
export OPENSSL_INCLUDE_PATH=$DEPENDS_PATH/include
export OPENSSL_LIB_PATH=$DEPENDS_PATH/lib
export MINIUPNPC_INCLUDE_PATH=$DEPENDS_PATH/include
export MINIUPNPC_LIB_PATH=$DEPENDS_PATH/lib
export QRENCODE_INCLUDE_PATH=$DEPENDS_PATH/include
export QRENCODE_LIB_PATH=$DEPENDS_PATH/lib
export PNG_LIB_PATH=$DEPENDS_PATH/lib


if [ ! "$REBUILD" == "" ]; then
make -f makefile.unix clean
fi
make -f makefile.unix -j$(nproc)
# make -f makefile.unix
