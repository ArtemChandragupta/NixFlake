{ pkgs, ... }:{

programs.prismlauncher = {
  enable = true;
};

home.packages = [
  pkgs.portprotonqt
];

}
