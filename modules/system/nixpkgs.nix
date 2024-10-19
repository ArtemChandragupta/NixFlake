{ pkgs-u-small, inputs, ... }:{

nixpkgs.config = {
  permittedInsecurePackages = [];
  allowUnfree = true;
};

nixpkgs.overlays = [( final: prev: {
  # xdg-desktop-portal-hyprland = pkgs-u-small.xdg-desktop-portal-hyprland;
})];

}
