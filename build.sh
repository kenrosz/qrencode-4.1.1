#!/usr/bin/env bash
./configure --enable-static --without-png
make
gcc -Wall -g -O2 -pthread -o .libs/qrencode qrencode-qrenc.o ./.libs/libqrencode.a -pthread
ls -al ./.libs/qrencode
otool -L ./.libs/qrencode
