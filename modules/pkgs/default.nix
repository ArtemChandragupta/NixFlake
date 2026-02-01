# { pkgs-u-small, ... }:
{

imports = [
  ./apps.nix
  ./distrobox.nix
  ./flatpak.nix
  ./fonts.nix
  ./games.nix
  ./utils.nix
];

nixpkgs.config = {
  permittedInsecurePackages = [];
  allowUnfree = true;
};

nixpkgs.overlays = [( final: prev: {
  # mpd = pkgs-u-small.mpd;
})];

}
