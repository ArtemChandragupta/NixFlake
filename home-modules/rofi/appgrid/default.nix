{ pkgs, ... }:{

home = {
  packages = builtins.attrValues (import ./pkg.nix {inherit pkgs;});
  file.".config/rofi/launchers/rofi-appgrid/style.rasi".text = builtins.readFile ( ./style.rasi );
};

}
