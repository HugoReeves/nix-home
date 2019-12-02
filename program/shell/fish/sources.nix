{ config, lib, pkgs, ... }:
{
  xdg.configFile."fish/fzf-colors.fish".source = ./fzf-colors.fish;
  # Functions
  xdg.configFile."fish/functions/kp.fish".source = ./functions/kp.fish;
  xdg.configFile."fish/functions/ledger-default.fish".source = ./functions/ledger-default.fish;
  xdg.configFile."fish/functions/restic-ap.fish".source = ./functions/restic-ap.fish;
  xdg.configFile."fish/functions/restic-gcs.fish".source = ./functions/restic-gcs.fish;
  xdg.configFile."fish/functions/restic-pd.fish".source = ./functions/restic-pd.fish;
  xdg.configFile."fish/functions/start_ssh_agent.fish".source = ./functions/start_ssh_agent.fish;
}
