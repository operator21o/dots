{ pkgs, ... }:

{
  imports = [
    ./waybar/waybar.nix
    ./wofi/wofi.nix
  ];

  home.packages = with pkgs; [
    waytrogen
    rofimoji
    brightnessctl # adjust brightness
    pavucontrol # audio control
  ];

  # cursor
  home.pointerCursor = {
    enable = true;

    gtk.enable = true;
    x11.enable = true;

    package = pkgs.graphite-cursors;
    name = "graphite-light";
    size = 24;
  };

  services.awww.enable = true;

  programs.swaylock.enable = true;

  xdg.configFile."niri/config.kdl".source = ./niri/config.kdl;
}
