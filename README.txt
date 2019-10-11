
# how to use

## prepare enviroment

## run build script

build `libjs_static.a`

```bash
cd js/src/build-ios
./pt_build_ios.sh [arch]
make -j 16
```

create `libmozglue.a`

```bash
./link_mozglue.sh
```
