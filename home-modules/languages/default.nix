{ var, ... }:{

imports = if !var.init then [
  ./python.nix
  ./TeX.nix
] else [ ];

}
