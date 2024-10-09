{ pkgs, ... }:{

home.packages = with pkgs.haskellPackages; [
  ghc # Compiler
  haskell-language-server # Server for helix
  # ghcitui # Tui for interpriter (Broken)
  # cabal-install # What is it?
  # stack # The Haskell tool stack
];

}
