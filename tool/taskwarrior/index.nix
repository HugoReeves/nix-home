{ config, lib, pkgs, ... }:
{
  programs.taskwarrior = {
    enable = true;
    config = {};
    dataLocation = "/home/x/flow/tasks";
  };
}
