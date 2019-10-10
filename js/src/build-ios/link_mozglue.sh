#!/bin/bash 
set -x
rm -f libmozglue.a

xcrun -sdk iphoneos ar rcs libmozglue.a \
    memory/build/zone.o \
    memory/build/Unified_cpp_memory_build0.o \
    memory/mozalloc/cxxalloc.o \
    memory/mozalloc/mozalloc_abort.o \
    memory/mozalloc/Unified_cpp_memory_mozalloc0.o \
    mozglue/misc/AutoProfilerLabel.o \
    mozglue/misc/ConditionVariable_posix.o \
    mozglue/misc/Mutex_posix.o \
    mozglue/misc/Printf.o \
    mozglue/misc/StackWalk.o \
    mozglue/misc/TimeStamp.o \
    mozglue/misc/TimeStamp_darwin.o \
    mozglue/misc/Decimal.o \
    mfbt/lz4.o \
    mfbt/Compression.o \
    mfbt/Unified_cpp_mfbt0.o \
    mfbt/Unified_cpp_mfbt1.o \