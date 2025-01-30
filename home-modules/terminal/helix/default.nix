{

imports = [
  ./keymap.nix
  ./languages.nix
];

programs.helix = {
  enable = true;
  defaultEditor = true;
  settings = {
    theme = "gruvbox";
    editor = {
      line-number = "relative";
      color-modes = true;

      soft-wrap.enable = true;
      
      statusline = {
        left = [
          "mode"
          "spacer"
          "diagnostics"
          "version-control"
          "file-name"
          "read-only-indicator"
          "file-modification-indicator"
          "spinner"
        ];
        right = [
          "file-encoding"
          "file-type"
          "selections"
          "position"
        ];
      };
      
      cursor-shape = {
        normal = "block";
        select = "block";
        insert = "bar";
      };
      whitespace.render.tab = "all";
      indent-guides = {
        render = true;
        character = "│";
      };
    };
  };
};

}
