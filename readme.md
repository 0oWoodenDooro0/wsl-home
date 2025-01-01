# Getting started

```sh 
nix shell nixpkgs#home-manager nixpkgs#gh --command sh -c "\
  gh auth login \
  && gh repo clone OoWoodenDooro0/wsl-home -- --depth=1 \
  && home-manager switch --flake ./wsl-home#user \
"
```
