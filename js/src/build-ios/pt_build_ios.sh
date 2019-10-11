#!/bin/bash 

#reset

set -x

IPHONE_SDK=iphoneos

arg_arch=$1


if [ $arg_arch == "aarch64" ] ; then
    PT_TARGET=aarch64-apple-ios
    PT_ARCH=aarch64
elif [ $arg_arch == "armv7s" ] ; then
    PT_TARGET=armv7s-apple-ios
    PT_ARCH=armv7s
elif [ $arg_arch == "armv7" ] ; then
    PT_TARGET=armv7-apple-ios
    PT_ARCH=armv7
else 
    echo "no arch or bad arch"
    exit 1
fi


#pwd="$(dirname ${BASH_SOURCE[0]})"
pwd=`pwd`

#PT_CC=/Users/cocos/Downloads/firefox-69.0/js/src/build-ios/cc_link
#PT_CXX=/Users/cocos/Downloads/firefox-69.0/js/src/build-ios/cxx_link

PT_CC=$pwd/cc_link
PT_CXX=$pwd/cxx_link


#PT_DISABLE_JIT="--disable-jm --disable-methodjit --disable-monoic --disable-polyic"
PT_DISABLE_JIT=""


CFLAGS=" $PT_FLAGS " \
CXXFLAGS=" $PT_FLAGS " \
CC=$PT_CC \
CXX=$PT_CXX \
../configure \
    --enable-ios-target \
    --without-tests \
    --disable-shared-js \
    --target=$PT_TARGET \
    --disable-js-shell \
    --disable-ion \
    $PT_DISABLE_JIT \
    --with-ios-sdk=$IPHONE_SDK \
    --enable-debug



    #--with-system-zlib=/Users/cocos/Downloads/zlib-1.2.11/dist \
 #   --enable-simulator=arm64
#--with-ios-target=iPhoneOS \

