rustc -C opt-level=3 -C target-cpu=core2 nbody.rs
time ./nbody 10000000
rm nbody

go build nbody.go
time ./nbody 10000000
rm nbody

crystal build nbody.cr --release
time ./nbody 10000000
rm nbody