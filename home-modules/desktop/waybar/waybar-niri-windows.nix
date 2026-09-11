{
  lib,
  buildGoModule,
  fetchFromGitHub,
  gtk3,
  pkg-config,
}:

buildGoModule {
  pname = "waybar-niri-windows";
  version = "unstable-2026-06-02";

  src = fetchFromGitHub {
    owner = "calico32";
    repo = "waybar-niri-windows";
    rev = "17828f901b56250e88acb421054b87ef311d8f3a";
    sha256 = "0b7zj0jp8cmnyr3svpv53130qp82izp4fz77zjiq37503clz2wvf";
  };

  vendorHash = "sha256-jK87vZYfUe8znk65SmJ1mN8qP5K3dtt950hKGWTYXs4=";

  postPatch = ''
    substituteInPlace module/module.go \
      --replace-fail 'i.label.SetText(text)' 'i.label.SetMarkup(text)'
  '';

  nativeBuildInputs = [ pkg-config ];
  buildInputs = [ gtk3 ];

  buildPhase = ''
    runHook preBuild
    go build -buildmode=c-shared -o waybar-niri-windows.so ./main
    runHook postBuild
  '';

  installPhase = ''
    runHook preInstall
    install -Dm755 waybar-niri-windows.so \
      $out/lib/waybar-niri-windows.so
    runHook postInstall
  '';

  meta = {
    description = "Niri window minimap and focus indicator for Waybar";
    homepage = "https://github.com/calico32/waybar-niri-windows";
    license = lib.licenses.mit;
    platforms = lib.platforms.linux;
  };
}
