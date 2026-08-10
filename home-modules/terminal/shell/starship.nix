{ pkgs, ... }: {

programs.starship = {
  enable = true;
  enableNushellIntegration = true;
  settings = pkgs.lib.importTOML ./starship-classic.toml;
};

}
