{ var, ... }:{

imports = if !var.init then [
  ./haskell.nix
  ./julia.nix
  ./python.nix
  ./TeX.nix
  ./typst.nix
] else [ ];

}
