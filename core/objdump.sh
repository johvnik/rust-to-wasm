#!/bin/bash

# Get the directory of the current script
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR

wasm-objdump -h ./target/wasm32-unknown-unknown/release/core.wasm
