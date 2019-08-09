{ config, lib, pkgs, attrsets, ... }:
{
  imports = [
    # Files to source for fish config
    ../../program/shell/fish/sources.nix
    # Scripts
    #./script/index.nix
  ];

  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [
  ];

  # Environment
  home.sessionVariables = {
    EDITOR = "nvim";
  };

  programs.fish = import ../../program/shell/fish/default.nix;
}
