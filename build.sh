#!/bin/bash

BUILD_DIR='build' 

echo -e '==> start build ...' 

if [ "$1" == 'rebuild' ]; then
	rm -rf $BUILD_DIR
elif [ "$1" == 'clean' ]; then
	rm -rf $BUILD_DIR
	exit
fi

echo -e '==> prepare build directory ...' 
mkdir -p $BUILD_DIR

echo -e '\n==> make ...\n'

cd $BUILD_DIR

cmake ../src

time make

cd ..
echo -e '\n==> build finish!'
