# Upgrading packages in Cargo.toml

I wanted to upgrade all packages listed in my Cargo.toml-file.
Cargo has a command to update all packages in Cargo.lock (`cargo update`),
but this leaves the `Cargo.toml` file untouched.

Weird that this functionality is not included in the standard
Cargo commands. But I found a `cargo-edit` on github:
(https://github.com/killercup/cargo-edit).

It is easily installed with on command:

    cargo install cargo-edit

Now you can simply run `cargo upgrade` to change all versions
mentioned in you `Cargo.toml` file to the lastest version.
