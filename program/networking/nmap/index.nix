{ config, lib, pkgs, ... }:
{
  xdg.configFile."nmap/scripts/vulners.nse".source = ./scripts/vulners.nse;
}
