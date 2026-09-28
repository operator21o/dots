{ ... }:

{
  # css for waybar
  programs.waybar = {
    style = ''
          * {
            font-family: "M PLUS 1p", sans-serif;
            font-size: 13px;
            font-weight: 500;
            letter-spacing: 1px;
            min-height: 0;
          }

          window#waybar {
            background: #d3cdb4;
            color: #49463d;
            border-top: 2px solid #afaa96;
            border-bottom: 2px solid #6a6759;
            padding: 0;
          }

          #workspaces,
          #custom-clock,
          #network,
          #pulseaudio,
          #tray,
          #power-profiles-daemon {
            background: #afaa96;
            color: #49463d;
            border: none;
            border-radius: 0;
            box-shadow: none;
            text-shadow: none;

            min-height: 34px;
            margin: 5px 3px;
            padding: 0 10px;
          }

          #workspaces {
            margin-left: 12px;
            padding: 0;
          }

          #workspaces button {
            background: transparent;
            color: #49463d;
            border: none;
            border-radius: 0;
            box-shadow: none;
            text-shadow: none;

            margin: 0;
            padding: 0 9px;
          }

          #workspaces button.focused,
          #workspaces button.active {
            background: #6a6759;
            color: #d3cdb4;
          }

          #workspaces button:hover {
            background: #95927f;
            color: #49463d;
          }

          #custom-clock {
            font-size: 16px;
            font-weight: 700;
            letter-spacing: 3px;
            text-shadow: 2px 2px 1px #88867c;
          }

          #custom-system,
          #pulseaudio,
          #battery {
            min-width: 78px;
            min-height: 34px;
            margin: 5px 3px 5px 0;
            padding: 0;

            background: #afaa96;
            color: #49463d;
            border: none;
            border-radius: 0;
            box-shadow: none;
            text-shadow: none;

            font-family: "M PLUS 1p", sans-serif;
            font-size: 11px;
            font-weight: 700;
            letter-spacing: 1px;
          }

          #custom-system:hover {
            background: #6a6759;
            color: #d3cdb4;
          }

          #battery {
            margin-right: 12px;
          }

          #battery.charging {
            background: #95927f;
            color: #49463d;
          }

          #battery.warning {
            background: #908d7c;
            color: #49463d;
          }

          #battery.critical {
            background: #6a6759;
            color: #d3cdb4;
          }

          #power-profiles-daemon {
        padding: 0 12px;
      }

      #power-profiles-daemon:hover {
        background-color: #49463d;
        color: #d3cdb4;
      }

          #tray {
            min-height: 34px;
            margin: 5px 3px 5px 0;
            padding: 0 6px;
          }

          #tray > .passive {
            -gtk-icon-effect: dim;
          }

          #tray > .needs-attention {
            background: #95927f;
          }

          #network.disconnected,
          #pulseaudio.muted {
            color: #908d7c;
          }
    '';
  };
}
