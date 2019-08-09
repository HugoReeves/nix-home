{ config, lib, pkgs, ... }:
{
  xdg.configFile."restic/includes".source = ./includes;
  xdg.configFile."restic/excludes".source = ./excludes;
}
