{ pkgs, ... }:{

home.packages = with pkgs; [
  grim
  wl-screenrec
];

programs.satty = {
  enable = true;
  package = pkgs.symlinkJoin {
    name = "satty-wrapped";
    paths = [ pkgs.satty ];
    nativeBuildInputs = [ pkgs.makeBinaryWrapper ];
    postBuild = ''wrapProgram $out/bin/satty --set GSK_RENDERER gl'';
  };
  settings = {
    general = {
      fullscreen   = true;
      early-exit   = true;
      copy-command = "wl-copy";
      initial-tool = "crop";
    };
    keybinds = {
      arrow = "a";
    };
    font = {
      family = "STIX Two Text";
    };
    color-palette.palette = [
      "#cc241dff"
      "#fabd2fff"
      "#b16286ff"
      "#83a598ff"
    ];
  };
};

}
