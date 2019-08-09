{ config, lib, pkgs, ... }:
{
  xdg.configFile."restic/envs".source = ./envs;
}
