{ config, lib, pkgs, ... }:
{
  programs.taskwarrior = {
    enable = true;
    config = {};
    dataLocation = "${config.home.homeDirectory}/flow/tasks";
  };
}
