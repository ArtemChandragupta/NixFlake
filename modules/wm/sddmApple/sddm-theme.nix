{ pkgs }:
pkgs.stdenv.mkDerivation {
  name = "sddm-theme";
  src = pkgs.fetchFromGitHub {
    owner = "ArtemChandragupta";
    repo = "SDDM-hello";
    rev = "fbe16986dbd2cb730a6d534c42bce50a3b5c3a64";
    sha256 = "1bpsq31fj6hacdxbik0bq8imf435c36rv2y9314jsqpq4rjibwgr";
  };
  installPhase = ''
    mkdir -p $out
    cp -R ./* $out/
  '';
}
