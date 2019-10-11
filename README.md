
# how to use

## compare changes 

view [changes](https://github.com/PatriceJiang/spidermonkey-69-ios-compile/compare/f909feaa59c4afbb36b09ef9a4e490682e5ddc43...master)

## prepare enviroment

ref official documents

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
