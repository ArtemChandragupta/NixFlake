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

      statusline = {
        right = [
          "diagnostics"
          "position"
          "position-percentage"
          "spacer"
        ];
      };

      gutters = [
        # "line-numbers"
        "diff"
      ];

      inline-diagnostics = {
        other-lines = "info";
        cursor-line = "info";
      };

      soft-wrap.wrap-indicator = "";

      # cursor-shape = {
      #   normal = "underline";
      #   select = "underline";
      #   insert = "bar";
      # };
      whitespace.render.tab = "all";
      indent-guides = {
        render = true;
        character = "▎";
      };
    };
  };
};

}
