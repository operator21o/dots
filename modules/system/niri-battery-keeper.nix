{ config, lib, pkgs, inputs, ... }:

let
  cfg = config.services.niri-battery-keeper;

  niri-battery-keeper = pkgs.callPackage ../pkgs/niri-battery-keeper.nix {
    src = inputs.niri-battery-keeper;
  };
in
{
  options.services.niri-battery-keeper = {
    enable = lib.mkEnableOption "niri-battery-keeper, a focus-driven CPU/IO governor for unfocused apps on Niri";
  };

  config = lib.mkIf cfg.enable {
    environment.systemPackages = [ niri-battery-keeper ];

    systemd.user.services.niri-battery-keeper = {
      description = "niri-battery-keeper daemon";
      documentation = [ "https://github.com/petrovichest/niri-battery-keeper" ];

      wantedBy = [ "graphical-session.target" ];
      partOf = [ "graphical-session.target" ];
      after = [ "graphical-session.target" ];
      bindsTo = [ "graphical-session.target" ];

      serviceConfig = {
        Type = "simple";
        ExecStart = "${niri-battery-keeper}/bin/niri-battery-keeper daemon";
        Slice = "session.slice";
        Restart = "on-failure";
        RestartSec = 2;
        TimeoutStopSec = 5;
        KillMode = "mixed";
        Environment = "RUST_LOG=info";
      };
    };
  };
}
