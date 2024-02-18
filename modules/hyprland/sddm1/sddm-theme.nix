{ pkgs }:

let
  image = ./Background.jpg;
in
pkgs.stdenv.mkDerivation {
  name = "sddm-theme";
  src = pkgs.fetchFromGitHub {
    owner = "3ximus";
    repo = "abstractdark-sddm-theme";
    rev = "e817d4b27981080cd3b398fe928619ffa16c52e7";
    sha256 = "1si141hnp4lr43q36mbl3anlx0a81r8nqlahz3n3l7zmrxb56s2y";
  };
  
  installPhase = ''
  mkdir -p $out
  cp -R ./* $out/

  cd $out/
  rm Background.jpg
  cp -r ${image} $out/Background.jpg
  '';

}
