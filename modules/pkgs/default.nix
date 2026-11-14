# { pkgs-u-small, ... }:
{

imports = [
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
    amnezia-vpn = prev.amnezia-vpn.overrideAttrs (oldAttrs: {
        preConfigure =
          (oldAttrs.preConfigure or "")
          + ''
            export PROD_AGW_PUBLIC_KEY="$(printf '%s' "$PROD_AGW_PUBLIC_KEY" | sed 's/[\]n$//')"
            export DEV_AGW_PUBLIC_KEY="$(printf '%s' "$DEV_AGW_PUBLIC_KEY" | sed 's/[\]n$//')"
          '';
      });
  })];
};

documentation.enable = false;

programs.nix-ld.enable = true;

}
