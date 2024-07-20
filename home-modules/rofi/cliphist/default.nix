{ pkgs, ... }:{

home = {
  packages = builtins.attrValues (import ./pkg.nix {inherit pkgs;});
  file = {
    ".config/rofi/launchers/rofi-cliphist/rofi-cliphist.sh" = {
      executable = true;
      source = ./script.sh;
    };
    ".config/rofi/launchers/rofi-cliphist/style.rasi".source = ./style.rasi;
  };
};

}
