{ pkgs, ... }:

{ 
  imports = [
    ./wayland.nix
    ./niri-battery-keeper.nix
  ];

  programs.niri.enable = true;
  services.niri-battery-keeper.enable = true;
  
  security.polkit.enable = true;
  security.pam.services.swaylock = { };
  services.gnome.gnome-keyring.enable = true;

  programs.xwayland.enable = true;

  xdg.portal = {
    enable = true;
    xdgOpenUsePortal = true;
    extraPortals = with pkgs; [
      xdg-desktop-portal-gnome
      xdg-desktop-portal-gtk
    ];
  };
  environment.extraInit = ''
    unset -v NIXOS_XDG_OPEN_USE_PORTAL
  '';

}