{ config, pkgs, lib, ... }:

{
  imports = [
    ../program/editor/neovim/default.nix
    ../program/terminal/tmux/default.nix

    ../program/file-manager/ranger/index.nix

    ../tool/taskwarrior/index.nix

    ../script/index.nix
  ];

  home.packages = with pkgs; [
    # Rust CLI Tools! I love rust.
    exa
    bat
    tokei
    xsv
    fd
    ripgrep
    starship

    # Common CLI tools
    gnupg
    gopass
    weechat
    fzf
    ledger
    jrnl
    taskwarrior

    # Development
    neovim
    terraform_0_12
    ctags
    direnv
    tmux
    jq
    git-crypt
    dnsutils
    whois
    nodejs
    yarn
    yq
    go
    elixir
    exercism
    rustup
    ## Python Dev
    python37Packages.pylint


    # Files
    zstd
    restic
    ranger
    croc
    syncthing
    gcsfuse
    #brig
    #ipfs

    # Media
    youtube-dl
    imagemagick

    # Overview
    htop
    wtf
    lazygit
    neofetch

    # Jokes
    fortune
    figlet
    lolcat
  ];


  # Git
  programs.git = {
    enable = true;
    userEmail = "hugolreeves@gmail.com";
    userName = "Hugo Reeves";
    signing.key = "738A0BE6D8D8AE7D";
    signing.signByDefault = true;
  };

  # Environment
  home.sessionVariables = {
    EDITOR = "nvim";
    BROWSER = "firefox";
    TERMINAL = "alacritty";
  };
}
