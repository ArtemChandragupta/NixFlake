{ pkgs-u-small, inputs, ... }:{

nixpkgs.overlays = [
  ( final: prev: {
    #xdg-desktop-portal-hyprland = pkgs-u-small.xdg-desktop-portal-hyprland;

    sf-mono-liga-bin = prev.stdenvNoCC.mkDerivation {
      pname = "sf-mono-liga-bin";
      version = "dev";
      src = inputs.sf-mono-liga-src;
      dontConfigure = true;
      installPhase = ''
        mkdir -p $out/share/fonts/opentype
        cp -R $src/*.otf $out/share/fonts/opentype/
      '';
    };
    
  })
];

}
