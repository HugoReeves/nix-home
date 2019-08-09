{ config, lib, pkgs, attrsets, ... }:
let location = import ./location.nix;
in
{
  imports = [
    ../../program/editor/neovim/default.nix
    ../../program/terminal/tmux/default.nix
    # Files to source for fish config
    ../../program/shell/fish/sources.nix
  ];

  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [
    dunst
    compton

    zathura
    ncmpcpp
  ];


  services = {
    polybar = {
      enable = true;
      config = ../../de/bars/polybar/osmium-config;
      script = "polybar top &";
    };

    screen-locker = {
      enable = true;
      inactiveInterval = 1;
      lockCmd = "\${pkgs.i3lock-color}/bin/i3lock-color -n -c 000000";
    };
  };

  # Fish Shell
  programs.fish = import ../../program/shell/fish/default.nix;

  # Environment
  home.sessionVariables = {
    EDITOR = "nvim";
    BROWSER = "firefox";
    TERMINAL = "alacritty";
  };

  programs.alacritty = {
    enable = true;
    settings = lib.attrsets.recursiveUpdate (import ../../program/terminal/alacritty/default-settings.nix) {
      background_opacity = 0.85;
      font.size = 9;
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
    "bspwm".source = ../../de/de/bspwm;
    "sxhkd".source = ../../de/de/sxhkd;
    "dunst/dunstrc".source = ../../de/notifications/dunst/dunstrc;
    "compton/compton.conf".source = ../../de/compositors/compton/boron-compton.conf;
  };
}
