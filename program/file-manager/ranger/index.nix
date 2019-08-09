{ config, lib, pkgs, ... }:
{
  xdg.configFile."ranger/rc.conf".source = ./rc.conf;
  xdg.configFile."ranger/rifle.conf".source = ./rifle.conf;
  xdg.configFile."ranger/scope.sh".source = ./scope.sh;
  xdg.configFile."ranger/commands.py".source = ./commands.py;
  xdg.configFile."ranger/commands_full.py".source = ./commands_full.py;
}
