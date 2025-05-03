{ stdenvNoCC
, fetchFromGitHub
}:
stdenvNoCC.mkDerivation {
  name = "Gruvbox Plus Dark";
  pname = "Gruvbox Plus Dark";

  src = fetchFromGitHub {
    owner = "SylEleuth";
    repo = "gruvbox-plus-icon-pack";
    rev = "05db827e9deee1f824243276b3369690df3c9a8b";
    hash = "sha256-3aFgc3emiwk0EzGlKzDv1mHEqNNIlPk2MuNnkl5oY54=";
  };

  dontBuild = true;

  installPhase = ''
    runHook preInstall
    mkdir -p $out/share/icons/"Gruvbox Plus Dark"
    cp -a Gruvbox-Plus-Dark/* $out/share/icons/"Gruvbox Plus Dark"
    runHook postInstall
  '';
}
