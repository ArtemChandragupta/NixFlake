{ pkgs }:
pkgs.stdenv.mkDerivation {
  name = "sddm-theme";
  src = pkgs.fetchFromGitHub {
    owner = "ArtemChandragupta";
    repo = "SDDM-theme-hello";
    rev = "c8284cfe7d698179fd41530aa9c41d3ba5253a1d";
    sha256 = "0aymd7mb9pp4rc755i12l2vcvh9hpn7znpy1jxwwwa5zqz4w4n30";
  };
  installPhase = ''
    mkdir -p $out
    cp -R ./* $out/
  '';
}
