{ var, ... }:{

imports = if !var.init then [
  ./haskell.nix
  ./python.nix
  ./TeX.nix
  ./typst.nix
] else [ ];

}
