{ pkgs, ... }:
let
  paste = pkgs.writers.writeNuBin "paste" (builtins.readFile ./paste.nu);
in{

imports = [
  ./filetype.nix
  ./icons.nix
  ./keymap.nix
  ./opener.nix
  ./plugins.nix
  ./theme.nix
];

home.packages = [ paste pkgs.ouch ];

programs.zoxide = {
  enable = true;
  enableNushellIntegration = true;
};

programs.yazi = {
  enable = true;
  enableNushellIntegration = true;

  settings.mgr.linemode = "mtime";
};

}
