{ stdenvNoCC
, fetchFromGitHub
}:
stdenvNoCC.mkDerivation {
  name = "Gruvbox Plus Dark";
  pname = "Gruvbox Plus Dark";

  src = fetchFromGitHub {
    owner = "SylEleuth";
    repo  = "gruvbox-plus-icon-pack";
    rev = "0985e0665c0185cea7ef27572b04fb6110bb5cbc";
    hash = "sha256-Fe6I/Okg/Lrir2BRSmqd16xBMNiVlhgxDZ15xPI0ctQ=";
  };

  dontBuild = true;

  installPhase = ''
    runHook preInstall
    mkdir -p $out/share/icons/"Gruvbox Plus Dark"
    cp -a Gruvbox-Plus-Dark/* $out/share/icons/"Gruvbox Plus Dark"
    runHook postInstall
  '';
}
