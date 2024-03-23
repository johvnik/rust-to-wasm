#!/bin/bash

# Get the directory of the current script
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR

cargo build --release
cp target/wasm32-unknown-unknown/release/core.wasm ../web/public/
