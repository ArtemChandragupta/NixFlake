{

imports = [
  ./languages.nix
  ./keymap.nix
];

programs.helix = {
  enable = true;
  settings = {
    theme = "gruvbox";
    editor = {
      line-number = "relative";
      color-modes = true;

      inline-diagnostics = {
        other-lines = "info";
        cursor-line = "info";
      };

      cursor-shape = {
        normal = "underline";
        select = "underline";
        insert = "bar";
      };
      whitespace.render.tab = "all";
      indent-guides = {
        render = true;
        character = "▏";
      };
    };
  };
};

}
