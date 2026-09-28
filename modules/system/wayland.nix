{ pkgs, ... }:

{
  # make stuff work on wayland
  environment.variables = {
    _JAVA_AWT_WM_NONREPARENTING = "1";
    MOZ_ENABLE_WAYLAND = "1";
    NIXOS_OZONE_WL = "1";
    QT_QPA_PLATFORM = "wayland";
    QT_WAYLAND_DISABLE_WINDOWDECORATION = "1";
    SDL_VIDEODRIVER = "wayland,x11";
    XDG_SESSION_TYPE = "wayland";
    WLR_NO_HARDWARE_CURSORS = "1";
  };

  hardware.sensor.iio.enable = true;
  # services.udev.extraHwdb = ''
  #   sensor:modalias:acpi:INVN6500*:dmi:*svn*ASUSTeK*:*pn*TP300LA*
  #    ACCEL_MOUNT_MATRIX=0, 1, 0; 1, 0, 0; 0, 0, 1
  # '';

  
  programs.nix-ld.enable = true;
  programs.nix-ld.libraries = with pkgs; [
    openssl
    libX11
    libXcursor
    libxcb
    libXi
    libxkbcommon
  ];
  
  environment.systemPackages = with pkgs; [
    wayland
    egl-wayland
    mako
    libnotify
    wlr-randr
    wdisplays
    wofi
    wofi-emoji
    jq
    swayidle
    wl-clipboard
    qt5.qtwayland
    kdePackages.polkit-kde-agent-1
    libva
    xwayland-run
    xwayland-satellite
  ];

  # Enable polkit
  security.polkit.enable = true;
}