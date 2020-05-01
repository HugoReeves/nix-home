{
  env = {
    "TERM" = "xterm-256color";
  };

  background_opacity = 0.75;

  window = {
    padding.x = 10;
    padding.y = 10;
    decorations = "buttonless";
  };

  font = {
    size = 12.0;
    use_thin_strokes = true;

    normal.family = "FiraCode Nerd Font";
    bold.family = "FiraCode Nerd Font";
    italic.family = "FiraCode Nerd Font";
  };

  cursor.style = "Beam";

  shell = {
    program = "fish";
    #args = [
    #"-C"
    #"/usr/bin/env neofetch"
    #];
  };

  # Challenge Deep
  #colors = {
  ## Default colors
  #primary = {
  #background = "0x1b182c";
  #foreground = "0xcbe3e7";
  #};

  ## Normal colors
  #normal = {
  #black =   "0x100e23";
  #red =     "0xff8080";
  #green =   "0x95ffa4";
  #yellow =  "0xffe9aa";
  #blue =    "0x91ddff";
  #magenta = "0xc991e1";
  #cyan =    "0xaaffe4";
  #white =   "0xcbe3e7";
  #};

  ## Bright colors
  #bright = {
  #black =   "0x565575";
  #red =     "0xff5458";
  #green =   "0x62d196";
  #yellow =  "0xffb378";
  #blue =    "0x65b2ff";
  #magenta = "0x906cff";
  #cyan =    "0x63f2f1";
  #white = "0xa6b3cc";
  #};
  #};

  # Nord
  colors = {
    primary = {
      background = "0x2E3440";
      foreground = "0xD8DEE9";
    };

    cursor = {
      text = "0x2E3440";
      cursor = "0xD8DEE9";
    };

    normal = {
      black = "0x3B4252";
      red = "0xBF616A";
      green = "0xA3BE8C";
      yellow = "0xEBCB8B";
      blue = "0x81A1C1";
      magenta = "0xB48EAD";
      cyan = "0x88C0D0";
      white = "0xE5E9F0";
    };

    bright = {
      black = "0x4C566A";
      red = "0xBF616A";
      green = "0xA3BE8C";
      yellow = "0xEBCB8B";
      blue = "0x81A1C1";
      magenta = "0xB48EAD";
      cyan = "0x8FBCBB";
      white = "0xECEFF4";
    };
  };
}
