# { pkgs-u-small, ... }:
{

imports = [
  # ./distrobox.nix
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
  overlays = [( final: prev: {
    # mpd = pkgs-u-small.mpd;
  })];
};

documentation.enable = false;

programs.nix-ld.enable = true;

}
