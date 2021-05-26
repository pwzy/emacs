#/bin/bash

cd ./elpa/fuz-* && cargo build --release 
mv target/release/libfuz_core.dylib fuz-core.so
