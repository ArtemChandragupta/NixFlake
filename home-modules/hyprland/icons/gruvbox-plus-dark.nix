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
    rev = "5b060688b5641e36ad02cfcf5120afff82519fca";
    hash = "sha256-GPp+8sBZq7oogtm0Nta8X3XHElE6J0PYGA1Uj4yJIuY=";
  };

  dontBuild = true;

  installPhase = ''
    runHook preInstall
    mkdir -p $out/share/icons/"Gruvbox Plus Dark"
    cp -a Gruvbox-Plus-Dark/* $out/share/icons/"Gruvbox Plus Dark"
    runHook postInstall
  '';
}
