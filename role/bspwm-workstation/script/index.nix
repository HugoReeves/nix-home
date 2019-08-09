{ config, lib, ... }:
{
  xdg.configFile."scripts/role-specific/wm".source = ./wm;
  xdg.configFile."scripts/role-specific/launcher".source = ./launcher;
}

