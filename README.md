# Nix Home

This repository contains user configuration deployed using the helpful tool [Home Manager](https://github.com/rycee/home-manager).
In order to setup a new home sapce, simply add a home.nix file similar to this one.

```nix
{ config, pkgs, ... }:

{
  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  imports = [
    ./machine/apollo.nix
    ./user/x.nix
    ./role/darwin-laptop/index.nix
  ];
}
```
**Machine** contains configuration specific to a given machine. **User** contains configuration specific to a given user, think git config etc. **Role** contains the bulk of the configuration and sets up most user space tools, think neovim and your terminal.
