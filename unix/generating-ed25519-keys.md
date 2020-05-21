# Generating ed25519 keys

Sometimes, I need to generate SSH key pairs, and I prefer [Ed25519](https://ed25519.cr.yp.to/) keys.
But I never can remember how to generate these keys. Here we go:

    ssh-keygen -o -a 100 -t ed25519 -f ~/.ssh/id_ed25519 -C "john@example.com"
