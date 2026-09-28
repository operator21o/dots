{
  system,
  nixpkgs,
  home-manager,
  stateVersion,
  inputs,
  host,
  ...
}:

let
  pkgs = import nixpkgs {
    inherit system;
    config.allowUnfree = true;
  };
  configuration = home-manager.lib.homeManagerConfiguration {
    inherit pkgs;

    extraSpecialArgs = {
      inherit stateVersion inputs;
    };

    modules = [
      ./rabbit.nix
    ];
  };
in
{
  "rabbit" = configuration;
  "rabbit@${host}" = configuration;
}