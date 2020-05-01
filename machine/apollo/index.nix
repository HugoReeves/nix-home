{ config, lib, pkgs, ... }:

{
  nixpkgs.config.allowUnfree = true;

  imports = [
    ./tool/restic/index.nix
    ../../tool/restic/index.nix
  ];
}
