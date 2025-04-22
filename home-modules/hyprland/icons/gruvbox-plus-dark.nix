{ stdenvNoCC
, fetchFromGitHub
}:
stdenvNoCC.mkDerivation {
  name = "Gruvbox Plus Dark";
  pname = "Gruvbox Plus Dark";

  src = fetchFromGitHub {
    owner = "SylEleuth";
    repo = "gruvbox-plus-icon-pack";
    rev = "6c8cad23e667bf8c1ca62b33fb8a35e464b22981";
    hash = "sha256-3zC9YlEk4e69+SC5nVMezRuexQa3DvYU63ec2zm1dUw=";
  };

  dontBuild = true;

  installPhase = ''
    runHook preInstall
    mkdir -p $out/share/icons/"Gruvbox Plus Dark"
    cp -a Gruvbox-Plus-Dark/* $out/share/icons/"Gruvbox Plus Dark"
    runHook postInstall
  '';
}
