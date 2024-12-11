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
    # rev = "d663023f66e195ef63efac1fdab089336dc56984";
    # sha256 = "0rbr6xscpn9c5b7vjjyk4cjzffqgrn1s0pf6xsh2ig7ns63mpas7";
    rev  = "ba8f9a8ed8144749a37ea5763d75fa0394fd277d";
    hash = "sha256-6NvHmo+TadwT8jeb5hhEbQv9rHmeFucJrpGZFudP69Y=";
  };

  dontBuild = true;

  installPhase = ''
    runHook preInstall
    mkdir -p $out/share/icons/"Gruvbox Plus Dark"
    cp -a Gruvbox-Plus-Dark/* $out/share/icons/"Gruvbox Plus Dark"
    runHook postInstall
  '';
}
