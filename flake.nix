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
          permittedInsecurePackages = [];
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

    nixvim = {
      url = "github:nix-community/nixvim";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    ags.url = "github:Aylur/ags";
    yazi.url = "github:sxyazi/yazi";
  };
}
