{ config, lib, pkgs, ... }:
{
  nixpkgs.config.allowUnfree = true;

  programs.alacritty = {
    enable = true;
    settings = lib.attrsets.recursiveUpdate (import ../../program/terminal/alacritty/default-settings.nix) {
      shell.program = "/usr/local/bin/fish";
    };
  };

  home.file.".hammerspoon".source = ../../de/darwin-only/hammerspoon;
}
