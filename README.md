
# HOW TO BUILD

## View changes 

View [changes](https://github.com/PatriceJiang/spidermonkey-69-ios-compile/compare/f909feaa59c4afbb36b09ef9a4e490682e5ddc43...master)

Original source code from https://archive.mozilla.org/pub/firefox/releases/69.0b16/source/

## Prepare enviroment

Ref official documents

## Run build script

Build lib `libjs_static.a`

```bash
cd js/src/build-ios
./pt_build_ios.sh [arch]
make -j 16
```

Create archive `libmozglue.a`

```bash
./link_mozglue.sh
```
