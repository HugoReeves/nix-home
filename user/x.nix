{ config, pkgs, ... }:

{
  imports = [
    ../program/editor/neovim/default.nix
    ../program/terminal/tmux/default.nix
  ];

  home.packages = with pkgs; [
    # Rust CLI Tools! I love rust.
    exa
    bat
    tokei
    xsv
    fd

    # Development
    neovim
    tmux
    jq
    git-crypt
    dnsutils
    whois


    # Files
    zstd
    restic
    brig
    ipfs

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

  programs.git = {
    enable = true;
    userEmail = "hugolreeves@gmail.com";
    userName = "Hugo Reeves";
    signing.key = "738A0BE6D8D8AE7D";
    signing.signByDefault = true;
  };
  
}
