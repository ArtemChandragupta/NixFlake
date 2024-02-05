{ pkgs, config, lib, ... }:{

nix = {
  settings = { 
    auto-optimise-store = true;
    experimental-features = "nix-command flakes";

    substituters = ["https://hyprland.cachix.org"]; #hyprland cache
    trusted-public-keys = ["hyprland.cachix.org-1:a7pgxzMz7+chwVL3/pzj6jIBMioiJM7ypFP8PwtkuGc="];
  };
  gc = {
    automatic = true;
    dates = "weekly";
    options = "--delete-older-than 7d";
  };
};
nixpkgs.config = {
  permittedInsecurePackages = [
    "electron-25.9.0"
  ];
  allowUnfree = true;
};

}
