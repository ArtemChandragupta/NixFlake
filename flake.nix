{

outputs = { self, nixpkgs, nixpkgs-stable, home-manager, ... }@inputs:
let
  var = {
    username = "artem";
    host  = "homePC";
    glossy   = true;
  };
  system = "x86_64-linux";
  pkgs-s = nixpkgs-stable.legacyPackages.${system};
in
{
  nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
    inherit system;
    specialArgs = {
      inherit inputs; 
      inherit pkgs-s;
      inherit var;
    };
    modules = [ 
      ./configuration.nix 
      inputs.home-manager.nixosModules.default
      inputs.stylix.nixosModules.stylix
    ];
  };
};
    
inputs = {
  nixpkgs.url = "nixpkgs/nixos-unstable";
  nixpkgs-stable.url = "nixpkgs/nixos-24.05";

  hyprland = {
    type = "git";
    url = "https://github.com/hyprwm/Hyprland";
    submodules = true;
  };

  nixvim = {
    url = "github:nix-community/nixvim";
    inputs.nixpkgs.follows = "nixpkgs";
  };
    
  home-manager = {
    url = "github:nix-community/home-manager";
    inputs.nixpkgs.follows = "nixpkgs";
  };

  anyrun = {
    url = "github:anyrun-org/anyrun";
    inputs.nixpkgs.follows = "nixpkgs";
  };

  ags.url = "github:Aylur/ags";
  apple-fonts.url = "github:Lyndeno/apple-fonts.nix";
  stylix.url = "github:danth/stylix";
};

}
