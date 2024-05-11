{
  description = "Nixos config flake";
  
  outputs = { self, nixpkgs, home-manager, ... }@inputs:
    let
      username = "artem";
    in
    {
      nixosConfigurations = { 
        nixos = nixpkgs.lib.nixosSystem {
          system = "x86_64-linux";
          specialArgs = {inherit inputs username;};
          modules = [ ./configuration.nix inputs.home-manager.nixosModules.default ];
        };
      };
    };
    
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    hyprland.url = "git+https://github.com/hyprwm/Hyprland?submodules=1";

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
