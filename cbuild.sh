#!/bin/bash

BUILD_DIR='build' 

echo -e '==> start build ...' 

VERSION="debug"

if [ "$1" == 'debug' ]; then
	VERSION="debug"
elif [ "$1" == 'release' ]; then
	VERSION="release"
elif [ "$1" == 'clean' ]; then
	rm -rf $BUILD_DIR
	exit
else
	echo 'params: debug,release'
	exit
fi

if [ "$2" == 'rebuild' ]; then
	rm -rf $BUILD_DIR
fi

echo -e '==> prepare build directory ...' 
mkdir -p $BUILD_DIR

echo -e '\n==> make ...\n'

cd $BUILD_DIR

cmake -DCMAKE_BUILD_TYPE=$VERSION ../

time make

cd ..
echo -e '\n==> build finish!'
