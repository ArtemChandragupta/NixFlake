{ stdenvNoCC
, fetchFromGitHub
}:
stdenvNoCC.mkDerivation {
  name  = "Gruvbox Plus Dark";
  pname = "Gruvbox Plus Dark";

  src = fetchFromGitHub {
    owner = "SylEleuth";
    repo  = "gruvbox-plus-icon-pack";
    rev   = "501b629c512eb9bb4baac9f8fc31162b948e18ba";
    hash  = "sha256-578yklaAT7H/A+yWWjl72attWIczKN0UpVCjiMgLyB0=";
  };

  dontBuild = true;

  installPhase = ''
    runHook preInstall
    mkdir -p $out/share/icons/"Gruvbox Plus Dark"
    cp -a Gruvbox-Plus-Dark/* $out/share/icons/"Gruvbox Plus Dark"
    runHook postInstall
  '';
}
