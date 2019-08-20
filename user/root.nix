{ config, pkgs, ... }:

{
  imports = [
    ../program/editor/neovim/default.nix
    ../program/terminal/tmux/default.nix
    ../program/file-manager/ranger/index.nix
    # Files to source for fish config
    ../program/shell/fish/sources.nix
  ];

  home.packages = with pkgs; [
    # Rust CLI Tools! I love rust.
    exa
    bat
    tokei
    xsv
    fd
    ripgrep

    # Common CLI tools
    gnupg
    fzf

    # Development
    neovim
    tmux
    jq
    yq
    git-crypt
    dnsutils
    whois
    nodejs
    yq
    go
    elixir
    exercism
    ## Python Dev
    python37Packages.pylint


    # Files
    zstd
    restic
    ranger
    #brig
    #ipfs

    # Overview
    htop
    wtf
    lazygit
    neofetch
  ];

  # Git
  programs.git = {
    enable = true;
    userEmail = "hugolreeves@gmail.com";
    userName = "Hugo Reeves";
    signing.key = "BD939B63A45C6CAE";
    signing.signByDefault = true;
  };

  # Environment
  home.sessionVariables = {
    EDITOR = "nvim";
    #BROWSER = "firefox";
    #TERMINAL = "alacritty";
  };

  # Fish Shell
  programs.fish = import ../program/shell/fish/default.nix;
}
