{ lib
, stdenvNoCC
, fetchFromGitHub
, gnome-themes-extra
, gtk-engine-murrine
}:
stdenvNoCC.mkDerivation rec {
  name = "Gruvbox Plus Dark";
  pname = "Gruvbox Plus Dark";

  src = fetchFromGitHub {
    owner = "SylEleuth";
    repo = "gruvbox-plus-icon-pack";
    rev = "7736e6d3d2785918b7a614047afc810ca988d677";
    hash = "sha256-mAhyFDinDignkyMCijjmPSFEB19iMt8Auu6x7D3ZkfY=";
  };

  dontBuild = true;

  installPhase = ''
    runHook preInstall
    mkdir -p $out/share/icons/"Gruvbox Plus Dark"
    cp -a Gruvbox-Plus-Dark/* $out/share/icons/"Gruvbox Plus Dark"
    runHook postInstall
  '';
}
