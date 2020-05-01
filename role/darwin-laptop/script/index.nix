{ config, lib, ... }:
{
  xdg.configFile."scripts/role-specific/de".source = ./de;
  #xdg.configFile."scripts/role-specific/program-specific".source = ./program-specific;
}
