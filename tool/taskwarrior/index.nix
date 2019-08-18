{ config, lib, pkgs, ... }:
{
  programs.taskwarrior = {
    enable = true;
    config = {};
    dataLocation = "~/flow/tasks";
  };
}
