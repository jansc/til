# Cargo dependency tree

Node's `npm` has a nice feature: You can list all packages and their
dependencies. `cargo` has no such feature included, but `cargo-tree`
delivers. Install it with

    cargo install cargo-tree

and it gives you a nice tree of dependencies for all libraries in `Cargo.toml`:

    $ cargo tree
    postgres v0.10.2 (file:///Volumes/git/rust/rust-postgres)
    ├── bufstream v0.1.1
    ├── byteorder v0.4.2
    ├── hex v0.1.0
    ├── log v0.3.4
    │   └── libc v0.2.4
    ├── net2 v0.2.20
    │   ├── cfg-if v0.1.0
    │   ├── kernel32-sys v0.2.1
    │   │   └── winapi v0.2.5
    │   ├── libc v0.2.4 (*)
    │   ├── winapi v0.2.5 (*)
    │   └── ws2_32-sys v0.2.1
    │       └── winapi v0.2.5 (*)
    └── phf v0.7.9
        └── phf_shared v0.7.9
