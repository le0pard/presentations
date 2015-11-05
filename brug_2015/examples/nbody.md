gcc -pipe -Wall -O3 -fomit-frame-pointer -march=native -mfpmath=sse -msse3 nbody.c -o nbody -lm
time ./nbody 100000000
rm nbody

rustc -C opt-level=3 -C target-cpu=core2 nbody.rs
time ./nbody 100000000
rm nbody

go build nbody.go
time ./nbody 100000000
rm nbody

crystal build nbody.cr --release
time ./nbody 100000000
rm nbody
