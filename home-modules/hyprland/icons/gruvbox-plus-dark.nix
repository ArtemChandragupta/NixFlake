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
    repo  = "gruvbox-plus-icon-pack";
    rev   = "d41c375cc8d3f6c92a8b6de3bc33edb041935881";
    hash  = "sha256-Qqrwi7JNnFQZKTtFeE6icRVQ4du1faPqHUAO50c0mGk=";
  };

  dontBuild = true;

  installPhase = ''
    runHook preInstall
    mkdir -p $out/share/icons/"Gruvbox Plus Dark"
    cp -a Gruvbox-Plus-Dark/* $out/share/icons/"Gruvbox Plus Dark"
    runHook postInstall
  '';
}
