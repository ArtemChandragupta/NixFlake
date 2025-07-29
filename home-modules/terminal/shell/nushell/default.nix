{ pkgs, ... }:
let
  rebuildScript = pkgs.writers.writeNuBin "nixR"
    (builtins.readFile ./rebuildScript.nu);
  focusCursorScript = pkgs.writers.writeNuBin "focusCursor"
    (builtins.readFile ./focusCursorScript.nu);
in{

home.packages = [
  rebuildScript
  focusCursorScript
];

programs.nushell = {
  enable = true;
  configFile.source = ./config.nu;
  shellAliases = { # Better to use nixR script because of nh!
    rebuild = "sudo nixos-rebuild switch --flake ~/nix";
    update  = "nix flake update ~/nix and sudo nixos-rebuild switch --flake ~/nix";
    jl = "julia";
    pl = ''julia -e "using Pluto; Pluto.run()"'';
  };
};

programs.carapace = {
  enable = true;
  enableNushellIntegration = true;
};

}
