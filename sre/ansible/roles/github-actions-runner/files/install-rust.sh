#!/bin/bash

set -e

bash

curl https://sh.rustup.rs -sSf | sh -s -- -y
source .cargo/env
rustup default stable
rustup update nightly
rustup update stable
rustup target add wasm32-unknown-unknown --toolchain nightly
