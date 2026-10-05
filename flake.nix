{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-26.05";
    home-manager.url = "github:nix-community/home-manager";
    # goof # function
    blackbox = {
      url = "path:/etc/nixos/blackbox";
      flake = false;
    };
    helix-master = {
      url = "git+https://git.gay/lambdalemon/helix?ref=patchy&shallow=1";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    cargo-install.url = "git+https://git.gay/lambdalemon/nix-cargo-install.git";
  };

  outputs =
    {
      self,
      nixpkgs,
      home-manager,
      ...
    }@inputs:
    let
      pkgs = import nixpkgs {
        inherit system;
        config = {
          allowUnfree = true;
          allowBroken = true;
          android_sdk.accept_license = true;
          permittedInsecurePackages = [
            "dotnet-runtime-6.0.36"
          ];
        };
      };
      system = "x86_64-linux";
      host = "automata";
      stateVersion = "26.05";
      mkNixOS = nixpkgs.lib.nixosSystem {
        inherit system pkgs;
        specialArgs = {
          inherit
            system
            stateVersion
            host
            inputs
            ;
        };
        modules = [ ./configuration.nix ];
      };
    in
    {
      nixosConfigurations = {
        "${host}" = mkNixOS;
        "nixos" = mkNixOS;
      };
      homeConfigurations = import ./home-configuration.nix {
        inherit
          home-manager
          inputs
          host
          system
          stateVersion
          ;
        nixpkgs = nixpkgs;
      };
    };
}