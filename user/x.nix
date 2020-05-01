{ config, pkgs, lib, ... }:

{
  imports = [
    ../program/editor/neovim/default.nix
    ../program/terminal/tmux/default.nix

    ../program/file-manager/ranger/index.nix
    ../program/networking/nmap/index.nix

    ../script/index.nix
  ];

  elemental.program.editor.neovim.enable = true;

  home.packages = with pkgs; [
    # Rust CLI Tools! I love rust.
    bandwhich
    bat
    broot
    exa
    fd
    fd
    hexyl
    hyperfine
    #navi
    nushell
    ripgrep
    ripgrep
    starship
    tokei
    topgrade
    xsv

    # Utils
    age
    nmap
    ssh-audit
    ytop
    pueue
    zoxide

    # Common CLI tools
    fzf
    gnupg
    gnutar
    gopass
    termtosvg

    # Development
    ctags
    direnv
    dnsutils
    elixir
    exercism
    git-crypt
    gitAndTools.gitflow
    glow
    gnumake
    go
    jq
    lorri
    lua
    luarocks
    nixpkgs-fmt
    nodejs
    pre-commit
    rustup
    terraform_0_12
    tmux
    yarn
    yq
    ## Python Dev
    python37Packages.jupyterlab
    python37Packages.pylint


    # Files and networking
    #brig
    #ipfs
    croc
    gcsfuse
    gocryptfs
    magic-wormhole
    qrencode
    ranger
    restic
    syncthing
    whois
    wrk
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
    cowsay
    fortune
    figlet
    lolcat
    nms
  ] ++ lib.optionals stdenv.isLinux [
    # Graphical
    anki
    joplin-desktop
    standardnotes

    # Devlopment Graphical
    android-studio
    vscode

    # Files and Networking
    sshfs
  ];


  # Git
  programs.git = {
    enable = true;
    userEmail = "hugo@hugoreeves.com";
    userName = "Hugo Reeves";
    signing.key = "F3F42E1F26FE5C63A19D3061FA5C94EDD085C989";
    signing.signByDefault = true;
    extraConfig = {
      url = {
        "git@github.com:" = {
          insteadOf = "https://github.com/";
        };
      };
    };
    # Aliases
    aliases = {
      "s" = "status";
      "co" = "checkout";
      "br" = "branch";
      # Commits, additions, and modifications
      "cm" = "commit -m";
      "aa" = "add .";
      "rh" = "reset --hard";
      # Logging
      "lgo" = "log --oneline --graph";
      "lo" = "log --oneline";
      "ln" = "log -n"; # follow with a number to show n logs
      "lon" = "log --oneline -n"; # follow with a number to show n logs
    };
  };

  # Environment
  home.sessionVariables = {
    EDITOR = "nvim";
    BROWSER = "firefox";
    TERMINAL = "alacritty";
  };
}
