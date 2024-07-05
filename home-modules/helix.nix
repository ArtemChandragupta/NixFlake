{ pkgs, ... }:{

programs.helix = {
  enable = true;

  extraPackages = with pkgs; with nodePackages; [
    marksman
    nil nixfmt-rfc-style
  ];

  languages.language = [
    {
      name = "nix";
      formatter.command = "nixfmt-rfc-style";
    }
    {
      name = "javascript";
      auto-format = true;
    }
    {
      name = "css";
      file-types = [ "css" "rasi" ];
      auto-format = true;
    }
  ];
  
  settings = {
    theme = "gruvbox";
    
    editor = {
      line-number = "relative";
      completion-trigger-len = 1;
      bufferline = "multiple";
      color-modes = true;
      
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
      
      cursor-shape.insert = "bar";
      whitespace.render.tab = "all";
      indent-guides = {
        render = true;
        character = "┆";
      };
    };
  };
};

}
