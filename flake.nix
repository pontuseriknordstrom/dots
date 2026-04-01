{
  description = "ignis minimal flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

    lanzaboote = {
      url = "github:nix-community/lanzaboote/v1.0.0";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    impermanence.url = "github:nix-community/impermanence";

    helium = {
      url = "github:schembriaiden/helium-browser-nix-flake";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, lanzaboote, impermanence, helium, ... }@inputs: {
    nixosConfigurations = {
      ignis = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        specialArgs = { inherit inputs; };
        modules = [
          ./configuration.nix
          lanzaboote.nixosModules.lanzaboote
          impermanence.nixosModules.impermanence
          ./modules/boot.nix
          ./modules/impermanence.nix
          ./modules/networking.nix
          ./modules/audio.nix
          ./modules/bluetooth.nix
          ./modules/desktop.nix
          ./modules/gaming.nix
          ./modules/shell.nix
          ./modules/packages.nix
          ./modules/users.nix
        ];
      };
    };
  };
}
