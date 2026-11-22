# { pkgs-u-small, ... }:
{

imports = [
  ./amnezia

  ./flatpak.nix
  ./fonts.nix
  ./games.nix
  ./utils.nix
];

nixpkgs = {
  config = {
    permittedInsecurePackages = [];
    allowUnfree = true;
  };
};

documentation.enable = false;

programs.nix-ld.enable = true;

}
