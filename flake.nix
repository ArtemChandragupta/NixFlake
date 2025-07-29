{

outputs = inputs:
let
  system       = "x86_64-linux"; 
  pkgs-u-small = import inputs.nixos-u-small {inherit system;};
in
{
  nixosConfigurations = {
    ThinkBook13s = inputs.nixpkgs.lib.nixosSystem {
      inherit system;
      specialArgs = {
        inherit inputs;
        var = {
          user = "artem";
          host = "ThinkBook13s";
          init = false;
          base = "24.05";
        };
        inherit pkgs-u-small;
      };
      modules = [
        ./configuration.nix
        inputs.home-manager.nixosModules.default
        inputs.stylix.nixosModules.stylix
      ];
    };

    homePC = inputs.nixpkgs.lib.nixosSystem {
      inherit system;
      specialArgs = {
        inherit inputs;
        var = {
          user = "artem";
          host = "homePC";
          init = false;
          base = "24.05";
        };
        inherit pkgs-u-small;
      };
      modules = [
        ./configuration.nix
        inputs.home-manager.nixosModules.default
        inputs.stylix.nixosModules.stylix
      ];
    };
  };
};

inputs = {
  nixpkgs.url = "nixpkgs/nixos-unstable";
  nixos-u-small.url = "nixpkgs/nixos-unstable-small";

  nixvim = {
    url = "github:nix-community/nixvim";
    # inputs.nixpkgs.follows = "nixpkgs";
  };

  home-manager = {
    url = "github:nix-community/home-manager";
    inputs.nixpkgs.follows = "nixpkgs";
  };

  firefox-addons = {
    url = "gitlab:rycee/nur-expressions?dir=pkgs/firefox-addons";
    inputs.nixpkgs.follows = "nixpkgs";
  };

  stylix.url = "github:danth/stylix";
};

}
