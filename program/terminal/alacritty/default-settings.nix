{
  env = {
    "TERM" = "xterm-256color";
  };

  background_opacity = 0.50;

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
  colors = {
    # Default colors
    primary = {
      background = "0x1b182c";
      foreground = "0xcbe3e7";
    };

    # Normal colors
    normal = {
      black =   "0x100e23";
      red =     "0xff8080";
      green =   "0x95ffa4";
      yellow =  "0xffe9aa";
      blue =    "0x91ddff";
      magenta = "0xc991e1";
      cyan =    "0xaaffe4";
      white =   "0xcbe3e7";
    };

    # Bright colors
    bright = {
      black =   "0x565575";
      red =     "0xff5458";
      green =   "0x62d196";
      yellow =  "0xffb378";
      blue =    "0x65b2ff";
      magenta = "0x906cff";
      cyan =    "0x63f2f1";
      white = "0xa6b3cc";
    };
  };
}
