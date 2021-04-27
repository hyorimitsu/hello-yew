# How to use

```shell script
# install wasm-pack
cargo install wasm-pack
cargo +nightly install miniserve

# build
wasm-pack build --target web --out-name wasm --out-dir ./static

# serve
miniserve ./static --index index.html
```