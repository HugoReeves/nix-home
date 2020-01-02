{ config, pkgs, lib, ... }:

{
  imports = [
    ../program/editor/neovim/default.nix
    ../program/terminal/tmux/default.nix

    ../program/file-manager/ranger/index.nix
    ../program/networking/nmap/index.nix

    ../tool/taskwarrior/index.nix

    ../script/index.nix
  ];

  home.packages = with pkgs; [

    # Rust CLI Tools! I love rust.
    bat
    exa
    fd
    fd
    hexyl
    hyperfine
    ripgrep
    ripgrep
    starship
    starship
    tokei
    topgrade
    xsv

    # Utils
    ssh-audit
    nmap

    # Common CLI tools
    bitwarden-cli
    fzf
    gnupg
    gnutar
    gopass
    jrnl
    ledger
    taskwarrior
    termtosvg
    #weechat

    # Development
    ctags
    direnv
    dnsutils
    elixir
    exercism
    git-crypt
    go
    jq
    lua
    luarocks
    neovim
    nodejs
    rustup
    terraform_0_12
    tmux
    whois
    wrk
    yarn
    yq
    ## Python Dev
    python37Packages.pylint


    # Files
    #brig
    ipfs
    croc
    gcsfuse
    gocryptfs
    qrencode
    ranger
    restic
    syncthing
    zstd

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
    extraConfig = {
      url = {
        "git@github.com:" = {
          insteadOf = "https://github.com/";
        };
      };
    };
  };

  # Environment
  home.sessionVariables = {
    EDITOR = "nvim";
    BROWSER = "firefox";
    TERMINAL = "alacritty";
  };
}
