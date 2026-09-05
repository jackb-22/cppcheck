#!/bin/bash
set -e
cd "$(dirname "$0")"
cmake -B build -DCMAKE_BUILD_TYPE=Release -DHAVE_RULES=OFF
cmake --build build --parallel 2
cp build/bin/cppcheck executable 2>/dev/null || cp build/cppcheck executable
