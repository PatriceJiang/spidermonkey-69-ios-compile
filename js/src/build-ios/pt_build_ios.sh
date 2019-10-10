#!/bin/bash 

#reset

set -x

#IPHONE_SDK=/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS.sdk
#IPHONE_SDK=yes
IPHONE_SDK=iphoneos

#MAC_SDK=/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS.sdk


PT_TARGET=aarch64-apple-ios
# #PT_TARGET=aarch64-ios
# PT_ARCH=aarch64
# #//PT_ARCH=arm64-applie-darwin

#//PT_TARGET=arm64-apple-ios

# PT_TARGET=armv7s-apple-ios
# #PT_TARGET=armv7s-ios
# PT_ARCH=armv7s

PT_TARGET=armv7-apple-ios
#//PT_TARGET=armv7s-ios
PT_ARCH=armv7

#PT_FLAGS+="-arch $PT_ARCH"


#PT_CC=`xcrun -sdk iphoneos -find clang` 
#PT_CXX=`xcrun -sdk iphoneos -find clang++` 

#PT_CC="xcrun -sdk iphoneos clang"
#PT_CXX="xcrun -sdk iphoneos clang++"

PT_CC=/Users/cocos/Downloads/firefox-69.0/js/src/build-ios/cc_link
PT_CXX=/Users/cocos/Downloads/firefox-69.0/js/src/build-ios/cxx_link


CFLAGS=" $PT_FLAGS " \
CXXFLAGS=" $PT_FLAGS " \
CC=$PT_CC \
CXX=$PT_CXX \
../configure \
    --with-system-zlib=/Users/cocos/Downloads/zlib-1.2.11/dist \
    --enable-ios-target \
    --without-tests \
    --disable-shared-js \
    --target=$PT_TARGET \
    --disable-js-shell \
    --disable-ion \
    --with-ios-sdk=$IPHONE_SDK \
 #   --enable-simulator=arm64


#--with-ios-target=iPhoneOS \
    
    

# CFLAGS=" $PT_FLAGS " \
# CXXFLAGS=" $PT_FLAGS " \
# CC=
# ../configure \
#     --enable-ios-target \
#     --without-tests \
#     --disable-shared-js \
#     --target=$PT_TARGET \
#     --disable-js-shell \
#     --with-ios-sdk=$IPHONE_SDK \
#     --with-system-zlib
#    # --with-macos-sdk=$MAC_SDK
