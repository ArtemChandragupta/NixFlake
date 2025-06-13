{ stdenvNoCC
, fetchFromGitHub
}:
stdenvNoCC.mkDerivation {
  name = "Gruvbox Plus Dark";
  pname = "Gruvbox Plus Dark";

  src = fetchFromGitHub {
    owner = "SylEleuth";
    repo = "gruvbox-plus-icon-pack";
    rev = "5acbc2fd175bfedcafe37740fcc9581a92ea6588";
    hash = "sha256-hIbWjg8QsH6nqD3T6US6e2WAgmofjzCrejwWVvZywoA=";
  };

  # src = fetchFromGitHub {
  #   owner = "artemchandragupta";
  #   repo = "gruvbox-plus-icon-pack";
  #   rev = "e2b9a8fdeadc231dec0f9a733c3770356abf94a8";
  #   hash = "sha256-CH2PhTdwBAC2YjDMbyX0Yu/ggq/qWjGhceujUZ8uy+I=";
  # };

  dontBuild = true;

  installPhase = ''
    runHook preInstall
    mkdir -p $out/share/icons/"Gruvbox Plus Dark"
    cp -a Gruvbox-Plus-Dark/* $out/share/icons/"Gruvbox Plus Dark"
    runHook postInstall
  '';
}
