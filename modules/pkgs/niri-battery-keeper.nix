{ lib, rustPlatform, makeWrapper, libglvnd, wayland, libxkbcommon, src }:

rustPlatform.buildRustPackage rec {
  pname = "niri-battery-keeper";
  version = "0.3.1";

  inherit src;

  cargoLock = { lockFile = src + "/Cargo.lock"; };

  nativeBuildInputs = [ makeWrapper ];

  postFixup = ''
    wrapProgram "$out/bin/niri-battery-keeper" \
      --prefix LD_LIBRARY_PATH : "${lib.makeLibraryPath [ libglvnd wayland libxkbcommon ]}"
  '';

  meta = with lib; {
    description = "Keeps battery on a Niri laptop by reining in background apps via systemd cgroups";
    homepage = "https://github.com/petrovichest/niri-battery-keeper";
    license = licenses.mit;
    mainProgram = "niri-battery-keeper";
    platforms = platforms.linux;
  };
}