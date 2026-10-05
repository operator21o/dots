{ inputs, system, ... }: let
  cargoInstall = inputs.cargo-install.lib.${system}.cargoInstall;
in cargoInstall {
  package-name = "ccase";
  crate-version = "0.5.1";
  crate-hash = "sha256-xKRC3D9v9yhZrX7znxg6ByNZT5iIfGXSSWWQf6jwm1Q=";
  cargo-lock-hash = null;
  cargo-hash = "sha256-gi7CR5UUD+qUQ6wx0XepzyHHq9RH7SnsMXIKV4JoiQg=";
  extra-packages = [];
}