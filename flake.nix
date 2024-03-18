{
  description = "Nixos config flake";
  
  outputs = { self, nixpkgs, home-manager, ... }@inputs:
    let
      username = "artem";
      system = "x86_64-linux";
      pkgs = import nixpkgs  { 
        inherit system;
        config = { 
          allowUnfree = true;
          permittedInsecurePackages = [
            "electron-25.9.0"
            "freeimage-unstable-2021-11-01"
          ];
        };
      };
    in
    {
      nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
        inherit system;
        specialArgs = {inherit inputs username;};
        modules = [ ./configuration.nix inputs.home-manager.nixosModules.default ];
      };
    };

    inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    hyprland.url = "github:hyprwm/Hyprland";
    hyprlock.url = "github:hyprwm/hyprlock";
    hypridle.url = "github:hyprwm/hypridle";
    
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    ags.url = "github:Aylur/ags";

  };
}
