{ pkgs, ... }:

{
  imports = [
    ./style.nix
  ];

  programs.waybar = {
    systemd.enable = false;
    enable = true;

    settings = {
      mainBar = {
        layer = "top";
        position = "top";
        height = 48;

        modules-left = [
          "niri/workspaces"
        ];

        modules-center = [
          "custom/clock"
        ];

        modules-right = [
          "tray"
          "custom/system"
          "pulseaudio"
          "battery"
          "power-profiles-daemon"
        ];

        "custom/system" = {
          format = "SYSTEM";
          tooltip = false;

          on-click = "${pkgs.foot}/bin/foot ${pkgs.btop}/bin/btop --themes-dir /home/rabbit/.config/btop/themes";
        };

        "tray" = {
          icon-size = 16;
          spacing = 6;
        };

        "pulseaudio" = {
          format = "VOL {volume}%";
          format-muted = "MUTED";

          scroll-step = 5;
          max-volume = 100;

          tooltip = true;
          tooltip-format = "{desc}\n{volume}%";

          on-click = "wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle";
          on-click-right = "pavucontrol";
        };

        "battery" = {
          format = "{capacity}%";
          tooltip = true;
        };

        "power-profiles-daemon" = {
          format = "{icon}";
          tooltip = true;
          tooltip-format = "POWER PROFILE: {profile}";

          format-icons = {
            power-saver = "PWR";
            balanced = "BAL";
            performance = "PERF";
            default = "PWR";
          };
        };

        "custom/clock" = {
          exec = "date '+%a %b %d  %H:%M' | tr '[:lower:]' '[:upper:]'";
          interval = 60;
          tooltip = false;
        };
      };
    };
  };
}
