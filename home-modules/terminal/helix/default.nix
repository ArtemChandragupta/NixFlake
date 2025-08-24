{ pkgs, ... }:
let
  hx-writer = pkgs.writers.writeNuBin "hx-writer" (builtins.readFile ./hx-writer.nu);
in{

imports = [
  ./languages
  ./keymap-ru.nix
  ./keymap.nix
];

home.packages = [ hx-writer ];

programs.helix = {
  enable = true;
  defaultEditor = true;

  themes.gruvbox-recolor = {
    inherits = "gruvbox";
    "ui.statusline" = { bg = "black"; };
    "ui.cursor.primary.normal" = { bg = "black"; };
  };

  settings = {
    theme = "gruvbox-recolor";
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
        # "line-numbers"
        "diff"
      ];

      inline-diagnostics = {
        other-lines = "info";
        cursor-line = "info";
      };

      whitespace.render.tab = "all";
      lsp.display-progress-messages = true;
      indent-guides = {
        render = true;
        character = "▎";
      };
    };
  };
};

}
