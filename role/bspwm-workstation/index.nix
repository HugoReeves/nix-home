{ config, lib, pkgs, attrsets, ... }:
let location = import ./location.nix;
in
{
  imports = [
    # Files to source for fish config
    ../../program/shell/fish/sources.nix
    ../../program/networking/ssh/index.nix
    # Services
    ../../services/media/mpd/default.nix
    # Scripts
    ./script/index.nix
  ];

  nixpkgs.config.allowUnfree = true;
  nixpkgs.config.pulseaudio = true;

  home.packages = with pkgs; [
    ncmpcpp
    zathura

    dunst
    compton
  ];


  services = {
    polybar = {
      enable = true;
      config = ../../de/bars/polybar/boron-config;
      script = "polybar top &";
    };

    redshift = {
      enable = true;
      latitude = location.latitude;
      longitude = location.longitude;
      temperature = {
        day = 5700;
        night = 3000;
      };
    };
  };

  # Environment
  home.sessionVariables = {
    EDITOR = "nvim";
    BROWSER = "firefox";
    TERMINAL = "alacritty";
  };

  programs.fish = import ../../program/shell/fish/default.nix;

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

  programs.gpg = {
    enable = true;
  };
  services.gpg-agent = {
    enable = true;
    extraConfig = ''
      pinentry-program /run/current-system/sw/bin/pinentry-gtk-2
    '';
  };

  xdg.configFile = {
    "bspwm".source = ../../de/de/bspwm;
    "sxhkd".source = ../../de/de/sxhkd;
    "dunst/dunstrc".source = ../../de/notifications/dunst/dunstrc;
    "compton/compton.conf".source = ../../de/compositors/compton/boron-compton.conf;
  };
}
