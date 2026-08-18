{ pkgs, ... }: {

programs.starship = {
  enable = true;
  settings = pkgs.lib.importTOML ./starship-classic.toml;
};

}
