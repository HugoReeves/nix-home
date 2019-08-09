{ config, pkgs, ... }:

{
  services.mpd = {
    enable = true;
    musicDirectory = "${config.home.homeDirectory}/media/audio";
    playlistDirectory = "${config.home.homeDirectory}/media/audio/mpd-playlists";
    dataDir = "${config.xdg.dataHome}/mpd";
    extraConfig = ''
        audio_output {
          type    "pulse"
          name    "pulse audio"
        }
      '';
  };
}

