#!/bin/bash

# Get the directory of the current script
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR

wasm2wat ./target/wasm32-unknown-unknown/release/core.wasm
