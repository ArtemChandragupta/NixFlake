{

outputs = { self, nixpkgs, nixpkgs-stable, home-manager, firefox-addons, ... }@inputs:
let
  var = {
    user = "artem";
    host = "ThinkBook13s";
    init = false;
  };
  pkgs-s = nixpkgs-stable.legacyPackages."x86_64-linux";
in
{
  nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
    system = "x86_64-linux";
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

  firefox-addons = {
    url = "gitlab:rycee/nur-expressions?dir=pkgs/firefox-addons";
    inputs.nixpkgs.follows = "nixpkgs";
  };

  ags.url = "github:Aylur/ags";
  stylix.url = "github:danth/stylix";
};

}
