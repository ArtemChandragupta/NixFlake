{ stdenvNoCC
, fetchFromGitHub
}:
stdenvNoCC.mkDerivation {
  name = "Gruvbox Plus Dark";
  pname = "Gruvbox Plus Dark";

  src = fetchFromGitHub {
    owner = "SylEleuth";
    repo = "gruvbox-plus-icon-pack";
    rev = "8480fd222392e04f21ed5659a0b322a486221739";
    hash = "sha256-eqbG8BSU2sC7EuuJHAJ8eLRiafxKhbdiY5ipg/cJ4jU=";
  };

  # src = fetchFromGitHub {
  #   owner = "artemchandragupta";
  #   repo = "gruvbox-plus-icon-pack";
  #   rev = "b24c4e6d101a0099ba5bca4340e7717752101134";
  # hash = "sha256-RiBOehJxWnrlyFxR5JD1gSxeJJJD+Td1KbVHLSjsRmk=";
  #   # rev = "e2b9a8fdeadc231dec0f9a733c3770356abf94a8";
  # # hash = "sha256-CH2PhTdwBAC2YjDMbyX0Yu/ggq/qWjGhceujUZ8uy+I=";
  # };

  dontBuild = true;

  installPhase = ''
    runHook preInstall
    mkdir -p $out/share/icons/"Gruvbox Plus Dark"
    cp -a Gruvbox-Plus-Dark/* $out/share/icons/"Gruvbox Plus Dark"
    runHook postInstall
  '';
}
