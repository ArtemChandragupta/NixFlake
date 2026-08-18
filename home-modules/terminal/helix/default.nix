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
      soft-wrap.enable = true;
      continue-comments = false;
      completion-replace = true;
      trim-trailing-whitespace = true;

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
