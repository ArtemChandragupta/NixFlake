{ pkgs, ... }:
let
  rebuildScript = pkgs.writers.writeNuBin "nixR"
    (builtins.readFile ./rebuildScript.nu);
in{

home.packages = [rebuildScript];

programs.nushell = {
  enable = true;
  configFile.source = ./config.nu;
  shellAliases = { # Better to use nixR script because of nh!
    rebuild = "sudo nixos-rebuild switch --flake ~/nix";
    update  = "nix flake update ~/nix and sudo nixos-rebuild switch --flake ~/nix";
  };
};

programs.carapace = {
  enable = true;
  enableNushellIntegration = true;
};

}
