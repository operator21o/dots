{ ... }:

{
  xdg.configFile."wofi/config".text = ''
    show=drun
    prompt=SYSTEM // EXECUTE:
    width=500
    height=420
    location=center
    allow_images=false
    image_size=32
    hide_scroll=true
    insensitive=true
  '';

  xdg.configFile."wofi/style.css".text = ''
      * {
        font-family: "Noto Sans", "Noto Sans CJK JP", sans-serif;
        font-size: 15px;
        font-weight: 500;
        letter-spacing: 0.055em;
      }

      window {
        margin: 0;
        padding: 0;
        border: 2px solid #49463d;
        border-radius: 0;
        background-color: #d3cdb4;
        color: #49463d;
      }

      #outer-box {
        margin: 0;
        padding: 18px 18px 14px 18px;
        border-top: 7px solid #49463d;
        border-bottom: 7px solid #49463d;
        background-color: #d3cdb4;
      }

      #input {
        margin: 0 0 14px 0;
        padding: 11px 14px;
        border: 2px solid #49463d;
        border-radius: 0;
        background-color: #d3cdb4;
        color: #49463d;
        font-size: 14px;
        font-weight: 700;
        letter-spacing: 0.10em;

        box-shadow: none;
      }

      #input:focus {
        border: 2px solid #49463d;
        background-color: #ebe5cb;
        box-shadow: none;
        outline: none;
      }

      #scroll {
        margin: 0;
        padding: 0;
        background-color: transparent;
      }

      #inner-box {
        margin: 0;
        padding: 0;
        background-color: transparent;
      }

    #entry {
      min-height: 26px;
      margin: 2px 0;
      padding: 0 12px 0 18px;

      border: 1px solid rgba(73, 70, 61, 0.20);
      border-radius: 0;

      background-color: rgba(175, 170, 150, 0.30);
      color: #49463d;

      background-image:
        linear-gradient(
          90deg,
          #49463d 0%,
          #49463d 100%
        );
      background-repeat: no-repeat;
      background-position: left center;
      background-size: 0% 100%;

      transition-property: background-size, color, border-color, background-color;
      transition-duration: 180ms;
      transition-timing-function: ease-out;
    }

    #entry:hover {
      border-color: #49463d;
      color: #d3cdb4;

      background-size: 100% 100%;

      transition-duration: 180ms;
      transition-timing-function: ease-out;
    }

    #entry:selected {
      border-color: #49463d;
      color: #d3cdb4;

      background-size: 100% 100%;

      font-weight: 600;
      transition-duration: 120ms;
      transition-timing-function: ease-out;
    }

    #entry:hover #text,
    #entry:selected #text {
      color: #d3cdb4;
    }

    #text {
      margin: 0;
      padding: 0;
      color: #49463d;

      transition-property: color;
      transition-duration: 100ms;
      transition-timing-function: ease-out;
    }
  '';
}