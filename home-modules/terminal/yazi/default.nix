{ pkgs, ... }:{

imports = [
  ./filetype.nix
  ./icons.nix
  ./keymap.nix
  ./opener.nix
  ./plugins.nix
  ./theme.nix
];

home.packages = [ pkgs.ouch ];

programs.zoxide = {
  enable = true;
  enableNushellIntegration = true;
};

programs.yazi = {
  enable = true;
  enableNushellIntegration = true;
  shellWrapperName = "yy"; # Silencing warning

  settings.mgr.linemode = "mtime";
};

}
