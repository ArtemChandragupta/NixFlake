{

imports = [
  ./languages
  ./keymap-ru.nix
  ./keymap.nix
];

programs.helix = {
  enable = true;
  defaultEditor = true;

  settings = {
    theme = "gruvbox";
    editor = {
      line-number = "relative";
      color-modes = true;
      bufferline  = "multiple";

      statusline = {
        right = [
          "diagnostics"
          "position"
          "position-percentage"
          "spacer"
        ];
      };

      gutters = [
        "diff"
      ];

      inline-diagnostics = {
        other-lines = "info";
        cursor-line = "info";
      };

      whitespace.render.tab = "all";
      indent-guides = {
        render = true;
        character = "▎";
      };
    };
  };
};

}
