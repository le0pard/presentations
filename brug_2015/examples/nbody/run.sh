#!/bin/sh

ITERATIONS=50000000

echo "Cleanup"
mkdir -p ./.bins
rm -fr ./.bins/*

echo "Compiling c..."
gcc -pipe -Wall -O3 -fomit-frame-pointer -march=native -mfpmath=sse -msse3 nbody.c -o nbody -lm
mv nbody ./.bins/nbody_gcc

echo "Compiling rust..."
rustc -C opt-level=3 -C target-cpu=core2 nbody.rs
mv nbody ./.bins/nbody_rust

echo "Compiling go..."
go build nbody.go
mv nbody ./.bins/nbody_go

echo "Compiling crystal..."
crystal build nbody.cr --release
mv nbody ./.bins/nbody_cr

echo "#################### Benchmarking ####################"
echo ""
echo "C time"
time ./.bins/nbody_gcc $ITERATIONS
echo ""
echo "Rust time"
time ./.bins/nbody_rust $ITERATIONS
echo ""
echo "Golang time"
time ./.bins/nbody_go $ITERATIONS
echo ""
echo "Crystal time"
time ./.bins/nbody_cr $ITERATIONS
echo ""
echo "#################### Finished work ####################"