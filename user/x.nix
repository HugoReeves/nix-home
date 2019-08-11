{ config, pkgs, ... }:

{
  imports = [
    ../program/editor/neovim/default.nix
    ../program/terminal/tmux/default.nix
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

    # Common CLI tools
    gnupg
    gopass
    weechat

    # Development
    neovim
    tmux
    jq
    git-crypt
    dnsutils
    whois
    nodejs
    yq
    ## Python Dev
    python37Packages.pylint


    # Files
    zstd
    restic
    ranger
    croc
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
