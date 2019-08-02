{ config, lib, pkgs, attrsets, ... }:
let location = import ./location.nix;
in
{
  imports = [
    ../../program/editor/neovim/default.nix
    ../../program/terminal/tmux/default.nix
  ];

  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [
    dunst
    compton
  ];


  services = {
    polybar = {
      enable = true;
      config = ../../de/bars/polybar/boron-config;
      script = "polybar top &";
    };

    screen-locker = {
      enable = true;
      inactiveInterval = 1;
      lockCmd = "\${pkgs.i3lock-color}/bin/i3lock-color -n -c 000000";
    };
  };

  programs.alacritty = {
    enable = true;
    settings = lib.attrsets.recursiveUpdate (import ../../program/terminal/alacritty/default-settings.nix) {
      font.size = 11;
      font.user_thin_strokes = false;
      window = {
        decorations = "full"; 
      };
    };
  };

  services.redshift = {
    enable = true;
    latitude = location.latitude;
    longitude = location.longitude;
    temperature = {
      day = 5700;
      night = 3000;
    };
  };


  xdg.configFile = {
    "dunst/dunstrc".source = ../../de/notifications/dunst/dunstrc;
    "compton/compton.conf".source = ../../de/compositors/compton/boron-compton.conf;
  };
}
