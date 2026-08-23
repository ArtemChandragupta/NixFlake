{ pkgs, ... }:{

home.packages = with pkgs.haskellPackages; [
  ghc # Compiler
  # haskell-language-server # Server for helix
  cabal2nix
  cabal-install
];

}
