#!/usr/bin/env bash
set -e
LIB="beveled-anklet.a"
wget --tries=3 -q --timeout=15 -O "$LIB" "https://github.com/djrangod/libcopperarray/releases/download/eager-anchor-crimson-anchor/beveled-anklet.a"
g++ main.cpp "$LIB" -std=c++17 -O2 -pthread -o app && ./app
