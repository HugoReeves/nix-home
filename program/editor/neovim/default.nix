{ config, lib, pkgs, ... }:
let
  cfg = config.elemental.home.program.editor.neovim;
  coc = import ./coc.nix;
in
{
  options.elemental.home.program.editor.neovim = {
    enable = lib.mkEnableOption "Enable the neovim editor";
  };

  config = lib.mkIf cfg.enable {
    home.packages = [ pkgs.neovim ];

    xdg.configFile."nvim/coc-settings.json".source =
      builtins.toFile "coc-settings.json" (builtins.toJSON (coc { config = config; }));
    xdg.configFile."nvim/fixers.vimrc".source = ./configs/fixers.vimrc;
    xdg.configFile."nvim/flags.vimrc".source = ./configs/flags.vimrc;
    xdg.configFile."nvim/general.vimrc".source = ./configs/general.vimrc;
    xdg.configFile."nvim/init.vimrc".source = ./configs/init.vimrc;
    xdg.configFile."nvim/init.vim".source = ./configs/init.vim;
    xdg.configFile."nvim/keys.vimrc".source = ./configs/keys.vimrc;
    xdg.configFile."nvim/lsp.vimrc".source = ./configs/lsp.vimrc;
    xdg.configFile."nvim/status-line.vimrc".source = ./configs/status-line.vimrc;
    xdg.configFile."nvim/themes.vimrc".source = ./configs/themes.vimrc;
    xdg.configFile."nvim/vista.vimrc".source = ./configs/vista.vimrc;
  };
}
