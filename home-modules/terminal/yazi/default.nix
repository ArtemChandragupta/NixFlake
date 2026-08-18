{ pkgs, ... }:{

imports = [
  # ./noicons.nix
  ./icons.nix
  ./keymap.nix
  ./opener.nix
  ./plugins.nix
  ./theme.nix
];

home.packages = [ pkgs.ouch ];

programs.zoxide.enable = true;

programs.yazi = {
  enable = true;
  shellWrapperName = "y"; # Silencing warning

  settings.mgr.linemode = "mtime";
};

}
