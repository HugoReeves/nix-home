{ config, lib, pkgs, ... }:
{
  xdg.configFile."fish/fzf-colors.fish".source = ./fzf-colors.fish;
  # Functions
  xdg.configFile."fish/functions/kp.fish".source = ./functions/kp.fish;
  xdg.configFile."fish/functions/restic-gcs.fish".source = ./functions/restic-gcs.fish;
  xdg.configFile."fish/functions/restic-fd.fish".source = ./functions/restic-fd.fish;
  xdg.configFile."fish/functions/restic-sd.fish".source = ./functions/restic-sd.fish;
  xdg.configFile."fish/functions/start_ssh_agent.fish".source = ./functions/start_ssh_agent.fish;
}
