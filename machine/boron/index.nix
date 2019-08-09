{ config, lib, pkgs, ... }:

{
  imports = [
    ./tool/restic/index.nix
    ../../tool/restic/index.nix
  ];

  nixpkgs.config.allowUnfree = true;
}
