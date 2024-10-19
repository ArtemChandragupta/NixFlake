{

outputs = inputs:
let
  system = "x86_64-linux";
  var = {
    user = "artem";
    host = "ThinkBook13s";
    init = false;
  };
  pkgs-u-small = import inputs.nixos-u-small {inherit system;};
in
{
  nixosConfigurations.nixos = inputs.nixpkgs.lib.nixosSystem {
    inherit system;
    specialArgs = {
      inherit inputs;
      inherit var;
      inherit pkgs-u-small;
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
  nixos-u-small.url = "nixpkgs/nixos-unstable-small";

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
