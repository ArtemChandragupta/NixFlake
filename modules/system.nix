{ pkgs, config, lib, ... }:
{

nix = {
  settings = { 
    auto-optimise-store = true;
    experimental-features = "nix-command flakes";
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
