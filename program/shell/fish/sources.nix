{ config, lib, pkgs, ... }:
{
  xdg.configFile."fish/fzf-colors.fish".source = ./fzf-colors.fish;
  # Functions
  xdg.configFile."fish/functions/restic-gcs.fish".source = ./functions/restic-gcs.fish;
  xdg.configFile."fish/functions/start_ssh_agent.fish".source = ./functions/start_ssh_agent.fish;
}
