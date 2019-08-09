{ config, lib, ... }:
{
  xdg.configFile."scripts/shared/misc".source = ./misc;
}
