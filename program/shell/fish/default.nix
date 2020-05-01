{
  enable = true;

  shellAbbrs = {
    v = "nvim";
    vim = "nvim";

    p = "gopass";
    g = "git";
    c = "cargo";
    r = "ranger";
    tma = "tmux attach -t";
    tmns = "tmux new-session -t";
    wet = "curl wttr.in";

    # Alias like
    cat = "bat";
    ls = "exa";
    l = "exa";
    ll = "exa -l";
    lll = "exa -la";
    lt = "exa -T";
  };

  shellAliases = {
    tmux = "tmux -f ~/.config/tmux/tmux.conf";
  };

  promptInit = builtins.readFile ./prompt.fish;

  shellInit = ''
    set PATH (fd --absolute-path . $HOME/.config/scripts | tr '\n' ':' | sed 's/.$//') $PATH
    direnv hook fish | source
    source ~/.ssh/environment > /dev/null
  '';

  interactiveShellInit = ''
    eval (starship init fish)
    source $HOME/.config/fish/fzf-colors.fish
    zoxide init fish | source
    bind \cb beginning-of-line
  '';
}
